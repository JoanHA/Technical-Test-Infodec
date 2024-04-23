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
      
        Schema::create('cities', function (Blueprint $table) {
            $table->id();
            $table->string("es_name", 45);
            $table->string("ger_name", 45);
            $table->string("lat", 100);
            $table->string("lon", 100);
            $table->foreignId('country_id')
                ->constrained(table: 'countries', indexName: 'countries_city_id')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cities');
    }
};
