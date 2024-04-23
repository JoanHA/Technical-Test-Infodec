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
        Schema::create('historicals', function (Blueprint $table) {
            $table->id();
            $table->foreignId('country_id')
                ->constrained(table: 'countries', indexName: 'historical_country_id')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->foreignId('city_id')
                ->constrained(table: 'cities', indexName: 'historical_city_id')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->longText("budget_cop");
            $table->longText("budget_changed");
            $table->string("weather",50);
            $table->string("rate",50);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('historicals');
      
    }
};
