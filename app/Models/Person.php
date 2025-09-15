<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Person extends Model
{
    use HasFactory, SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'city_id',
        'job_id',
        'first_name',
        'last_name',
        'dni',
        'gender',
        'birthday',
        'phone',
        'address',
        'photo',
        'video',
        'short_description',
        'long_description',
        'type',
        'status'
    ];

    public function comments(){
        return $this->hasMany(Comment::class, 'foreign_key', 'local_key');
    }
}
