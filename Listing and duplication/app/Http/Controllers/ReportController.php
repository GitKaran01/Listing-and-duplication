<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Business;
use Illuminate\Support\Facades\DB;

class ReportController extends Controller
{
    public function index()
    {
        $stats = [];

        // Total name (Total count of all listings)
        $stats['total_listings'] = Business::count();

        // City wise data
        $stats['city_wise'] = Business::select('city', DB::raw('count(*) as total'))
            ->whereNotNull('city')
            ->groupBy('city')
            ->orderBy('total', 'desc')
            ->get();

        // Category + city-wise data
        $stats['category_city_wise'] = Business::select('category', 'city', DB::raw('count(*) as total'))
            ->whereNotNull('category')
            ->whereNotNull('city')
            ->groupBy('category', 'city')
            ->orderBy('total', 'desc')
            ->get();

        // Category + area-wise data
        $stats['category_area_wise'] = Business::select('category', 'area', DB::raw('count(*) as total'))
            ->whereNotNull('category')
            ->whereNotNull('area')
            ->groupBy('category', 'area')
            ->orderBy('total', 'desc')
            ->get();

        // Unique listing
        $stats['unique_listing_count'] = Business::where('status', 'unique')->count();

        // Duplicate listing (includes 'master' records that haven't been merged yet)
        $stats['duplicate_listing_count'] = Business::whereIn('status', ['duplicate', 'master'])->count();

        // Incomplete listing
        $stats['incomplete_listing_count'] = Business::where('is_complete', false)->count();

        return view('report', ['stats' => $stats]);
    }
}