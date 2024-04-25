<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Historicals extends Model
{
    protected $table = "historicals";
    protected $fillable =["country","city","budget_cop","budget_changed","weather","rate"];
}
