<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Business extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $table = 'business';
    protected $fillable = [
        'city_id',
        'job_types_id',
        'name',
        'person_id',
        'nit',
        'phone',
        'address',
        'description',
    ];

    // public function comments(){
    //     return $this->hasMany(Comment::class, 'foreign_key', 'local_key');
    // }
    public function joboffers(){
        return $this->hasMany(JobOffer::class, 'business_id');
    }
}
