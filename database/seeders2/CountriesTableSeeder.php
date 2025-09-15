<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class CountriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('countries')->delete();
        
        \DB::table('countries')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Bolivia',
                'created_at' => '2023-05-20 13:14:43',
                'updated_at' => '2023-05-20 13:14:43',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}