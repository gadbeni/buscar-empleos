<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class JobOffersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('job_offers')->delete();
        
        
        
    }
}