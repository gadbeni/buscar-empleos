<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class JobTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        // \DB::table('job_types')->delete();
        
        \DB::table('job_types')->insert(array (
            0 => 
            array (
                'id' => 7,
                'name' => 'Hoteleria',
                'description' => NULL,
                'slug' => 'hoteleria',
                'status' => 1,
                'created_at' => '2023-11-29 20:31:50',
                'updated_at' => '2023-11-29 20:31:50',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 8,
                'name' => 'Tienda de Accesorios para celulares',
                'description' => NULL,
                'slug' => 'tienda-de-accesorios-para-celulares',
                'status' => 1,
                'created_at' => '2023-11-29 20:32:21',
                'updated_at' => '2023-11-29 20:32:21',
                'deleted_at' => NULL,
            ),
            2 => 
            array (
                'id' => 9,
                'name' => 'Tienda de celulares y accesorios',
                'description' => NULL,
                'slug' => 'tienda-de-celulares-y-accesorios',
                'status' => 1,
                'created_at' => '2023-11-29 20:32:52',
                'updated_at' => '2023-11-29 20:32:52',
                'deleted_at' => NULL,
            ),
            3 => 
            array (
                'id' => 10,
                'name' => 'Restaurante',
                'description' => NULL,
                'slug' => 'restaurante',
                'status' => 1,
                'created_at' => '2023-11-29 20:33:13',
                'updated_at' => '2023-11-29 20:33:13',
                'deleted_at' => NULL,
            ),
            4 => 
            array (
                'id' => 11,
                'name' => 'Tienda de Material de escritorio',
                'description' => NULL,
                'slug' => 'tienda-de-material-de-escritorio',
                'status' => 1,
                'created_at' => '2023-11-29 20:34:26',
                'updated_at' => '2023-11-29 20:34:26',
                'deleted_at' => NULL,
            ),
            5 => 
            array (
                'id' => 12,
                'name' => 'Tienda de Calzados',
                'description' => NULL,
                'slug' => 'tienda-de-calzados',
                'status' => 1,
                'created_at' => '2023-11-29 20:34:55',
                'updated_at' => '2023-11-29 20:34:55',
                'deleted_at' => NULL,
            ),
            6 => 
            array (
                'id' => 13,
                'name' => 'Boutique',
                'description' => NULL,
                'slug' => 'boutique',
                'status' => 1,
                'created_at' => '2023-11-29 20:35:13',
                'updated_at' => '2023-11-29 20:35:13',
                'deleted_at' => NULL,
            ),
            7 => 
            array (
                'id' => 14,
                'name' => 'Imprenta y Publicidad',
                'description' => NULL,
                'slug' => 'imprenta-y-publicidad',
                'status' => 1,
                'created_at' => '2023-11-29 20:35:33',
                'updated_at' => '2023-11-29 20:35:33',
                'deleted_at' => NULL,
            ),
            8 => 
            array (
                'id' => 15,
                'name' => 'Tienda de ropa deportiva',
                'description' => NULL,
                'slug' => 'tienda-de-ropa-deportiva',
                'status' => 1,
                'created_at' => '2023-11-29 20:35:54',
                'updated_at' => '2023-11-29 20:35:54',
                'deleted_at' => NULL,
            ),
            9 => 
            array (
                'id' => 16,
                'name' => 'Licoreria',
                'description' => NULL,
                'slug' => 'licoreria',
                'status' => 1,
                'created_at' => '2023-11-29 20:36:13',
                'updated_at' => '2023-11-29 20:36:13',
                'deleted_at' => NULL,
            ),
            10 => 
            array (
                'id' => 17,
                'name' => 'Tienda de motocicletas',
                'description' => NULL,
                'slug' => 'tienda-de-motocicletas',
                'status' => 1,
                'created_at' => '2023-11-29 20:36:29',
                'updated_at' => '2023-11-29 20:37:11',
                'deleted_at' => NULL,
            ),
            11 => 
            array (
                'id' => 18,
                'name' => 'Salon y Peluqueria',
                'description' => NULL,
                'slug' => 'salon-y-peluqueria',
                'status' => 1,
                'created_at' => '2023-11-29 20:36:59',
                'updated_at' => '2023-11-29 20:36:59',
                'deleted_at' => NULL,
            ),
            12 => 
            array (
                'id' => 19,
                'name' => 'Tienda de Computadoras e Impresoras',
                'description' => NULL,
                'slug' => 'tienda-de-computadoras-e-impresoras',
                'status' => 1,
                'created_at' => '2023-11-29 20:37:38',
                'updated_at' => '2023-11-29 20:37:38',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}