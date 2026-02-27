<?php


namespace App\Imports;


use App\Models\Business;
use Illuminate\Support\Str;

use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithBatchInserts;
use Maatwebsite\Excel\Concerns\WithChunkReading;

class BusinessImport implements ToModel, WithHeadingRow, WithBatchInserts, WithChunkReading
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
  public function model(array $row)
{
    $name = $row['name'] ?? null;
    $area = $row['area'] ?? null;
    $city = $row['city'] ?? null;

    $isComplete = (!empty($name) && !empty($area) && !empty($city)) ? 1 : 0;

    return new Business([
        'business_name' => $name,
        'category' => $row['category'] ?? null,
        'ratings' => $row['ratings'] ?? null,
        'address' => $row['address'] ?? null,
        'sub_category' => $row['subcategory'] ?? null,
        'phone1' => $row['phone1'] ?? null,
        'phone2' => $row['phone_2'] ?? null,
        'mobile_no' => $row['phone1'] ?? null,
        'area' => $area,
        'city' => $city,
        'is_complete' => $isComplete,
        'status' => 'unprocessed',
    ]);
}


    public function batchSize(): int
    {
        return 1000; // Import 1000 records at a time
    }

    public function chunkSize(): int
    {
        return 1000; // Read 1000 records at a time
    }
}
