<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\BusinessImport;



class ImportController extends Controller
{
    /**
     * Show the upload form.
     */
    public function showUploadForm()
    {
        return view('import');
    }

    /**
     * Handle the file upload and import.
     */
    public function handleImport(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,xls,csv,txt',
        ]);


        try {
            // Import the data
            Excel::import(new BusinessImport, $request->file('file'));

            return redirect('/')->with('success', 'Data imported successfully! You can now find duplicates.');
        } catch (\Exception $e) {
            // Handle any import errors
            return redirect('/')->with('error', 'Error during import: ' . $e->getMessage());
        }
    }
}
