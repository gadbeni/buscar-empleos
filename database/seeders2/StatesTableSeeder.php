<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class StatesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('states')->delete();
        
        \DB::table('states')->insert(array (
            0 => 
            array (
                'id' => 1,
                'country_id' => 1,
                'name' => 'Beni',
                'created_at' => '2023-05-20 13:14:52',
                'updated_at' => '2023-05-20 13:14:52',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}