<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class CitiesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('cities')->delete();
        
        \DB::table('cities')->insert(array (
            0 => 
            array (
                'id' => 1,
                'state_id' => 1,
                'name' => 'Santísima Trinidad',
                'slug' => 'santisima-trinidad',
                'status' => 1,
                'created_at' => '2023-05-20 13:16:18',
                'updated_at' => '2023-05-20 13:16:36',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}