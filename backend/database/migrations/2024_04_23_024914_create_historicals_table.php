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
            $table->string("country");
            $table->string("city");
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
