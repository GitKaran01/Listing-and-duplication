<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
     Schema::create('businesses', function (Blueprint $table) {
    $table->id();
    $table->string('business_name')->nullable();      // Name
    $table->string('category')->nullable();           // Category
    $table->string('ratings')->nullable();            // Ratings
    $table->string('address')->nullable();            // Address
    $table->string('sub_category')->nullable();       // SubCategory
    $table->string('phone1')->nullable();             // phone1
    $table->string('phone2')->nullable();             // phone 2
    $table->string('mobile_no')->nullable();          // Optional fallback
    $table->string('area')->nullable();               // area
    $table->string('city')->nullable();               // city
    $table->boolean('is_complete')->default(false);   // completeness flag
    $table->string('status')->default('unprocessed'); // import status
    $table->string('duplicate_group_id')->nullable(); // for grouping duplicates
    $table->timestamps();                             // created_at, updated_at
});
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('businesses');
    }
};
