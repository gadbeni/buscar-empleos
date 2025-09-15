<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class JobApplicationsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('job_applications')->delete();
        
        
        
    }
}