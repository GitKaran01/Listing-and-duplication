<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Business;
use Illuminate\Support\Facades\DB;

class DuplicateController extends Controller
{
    /**
     * Show the list of duplicate groups.
     */
    public function index()
    {
        // Get all 'master' and 'duplicate' records, ordered by their group
        // and with 'master' records appearing first in each group.
        $duplicates = Business::whereIn('status', ['master', 'duplicate'])
            ->orderBy('duplicate_group_id')
            ->orderByRaw("FIELD(status, 'master', 'duplicate')")
            ->get();

        // Group them by the 'duplicate_group_id' for the view
        $duplicateGroups = $duplicates->groupBy('duplicate_group_id');

        return view('duplicates', ['duplicateGroups' => $duplicateGroups]);
    }

    /**
     * Handle the merge logic.
     */
    public function merge(Request $request)
    {
        $request->validate([
            'duplicate_group_id' => 'required|string',
            'master_id'          => 'required|integer',
        ]);

        $groupId = $request->input('duplicate_group_id');
        $masterId = (int) $request->input('master_id');

        // Start a transaction
        DB::beginTransaction();
        try {
            // 1. Find all records in this group
            $allRecords = Business::where('duplicate_group_id', $groupId)->get();

            // 2. Separate the master and the ones to delete
            $masterRecord = null;
            $idsToDelete = [];

            foreach ($allRecords as $record) {
                if ($record->id === $masterId) {
                    $masterRecord = $record;
                } else {
                    $idsToDelete[] = $record->id;
                }
            }

            if (!$masterRecord) {
                throw new \Exception('Master record not found in the group.');
            }

            // 3. Delete the non-master records
            if (count($idsToDelete) > 0) {
                Business::whereIn('id', $idsToDelete)->delete();
            }

            // 4. Update the master record to be 'unique'
            $masterRecord->status = 'unique';
            $masterRecord->duplicate_group_id = null;
            $masterRecord->save();

            DB::commit();
            return redirect()->back()->with('success', 'Group merged successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->back()->with('error', 'Error merging: ' . $e->getMessage());
        }
    }
}