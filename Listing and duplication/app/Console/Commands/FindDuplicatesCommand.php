<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Business;
use Illuminate\Support\Facades\DB;

class FindDuplicatesCommand extends Command
{
    protected $signature = 'app:find-duplicates';
    protected $description = 'Finds and flags duplicate business listings based on name, area, and city';

    public function handle()
    {
        $this->info('Starting duplicate detection...');

        // 1. Reset statuses
        $this->info('Resetting existing statuses...');
        Business::whereIn('status', ['duplicate', 'master'])
            ->update(['status' => 'unprocessed', 'duplicate_group_id' => null]);

        // 2. Find groups of duplicates based on name, area, and city
        $this->info('Finding duplicate groups (name + area + city)...');
        $duplicateGroups = DB::table('businesses')
            ->select('business_name', 'area', 'city', DB::raw('COUNT(*) as count'))
            ->whereNotNull('business_name')
            ->whereNotNull('area')
            ->whereNotNull('city')
            ->groupBy('business_name', 'area', 'city')
            ->having('count', '>', 1)
            ->get();


        if ($duplicateGroups->isEmpty()) {
            $this->info('No duplicate groups found.');
        } else {
            $this->info("Found {$duplicateGroups->count()} groups of duplicates.");
        }

        $progressBar = $this->output->createProgressBar($duplicateGroups->count());

        // 3. Tag duplicates
  foreach ($duplicateGroups as $group) {
    $businesses = Business::where('business_name', $group->business_name)
        ->where('area', $group->area)
        ->where('city', $group->city)
        ->orderBy('id')
        ->get();


            $masterRecord = $businesses->first();
            $groupId = (string) $masterRecord->id;

            // 3a. Tag the first record as 'master'
            $masterRecord->status = 'master';
            $masterRecord->duplicate_group_id = $groupId;
            $masterRecord->save();

            // 3b. Tag all other records as 'duplicate'
            foreach ($businesses->skip(1) as $duplicateRecord) {
                $duplicateRecord->status = 'duplicate';
                $duplicateRecord->duplicate_group_id = $groupId;
                $duplicateRecord->save();
            }

            $progressBar->advance();
        }

        $progressBar->finish();
        $this->info("\nDuplicate tagging complete.");

        // 4. Mark all remaining 'unprocessed' records as 'unique'
        $this->info('Marking unique records...');
        $uniqueCount = Business::where('status', 'unprocessed')->update(['status' => 'unique']);
        $this->info("Marked {$uniqueCount} records as unique.");

        $this->info('All done!');
        return 0;
    }
}
