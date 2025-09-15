<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('permissions')->delete();
        
        \DB::table('permissions')->insert(array (
            0 => 
            array (
                'id' => 1,
                'key' => 'browse_admin',
                'table_name' => NULL,
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            1 => 
            array (
                'id' => 2,
                'key' => 'browse_bread',
                'table_name' => NULL,
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            2 => 
            array (
                'id' => 3,
                'key' => 'browse_database',
                'table_name' => NULL,
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            3 => 
            array (
                'id' => 4,
                'key' => 'browse_media',
                'table_name' => NULL,
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            4 => 
            array (
                'id' => 5,
                'key' => 'browse_compass',
                'table_name' => NULL,
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            5 => 
            array (
                'id' => 6,
                'key' => 'browse_menus',
                'table_name' => 'menus',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            6 => 
            array (
                'id' => 7,
                'key' => 'read_menus',
                'table_name' => 'menus',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            7 => 
            array (
                'id' => 8,
                'key' => 'edit_menus',
                'table_name' => 'menus',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            8 => 
            array (
                'id' => 9,
                'key' => 'add_menus',
                'table_name' => 'menus',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            9 => 
            array (
                'id' => 10,
                'key' => 'delete_menus',
                'table_name' => 'menus',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            10 => 
            array (
                'id' => 11,
                'key' => 'browse_roles',
                'table_name' => 'roles',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            11 => 
            array (
                'id' => 12,
                'key' => 'read_roles',
                'table_name' => 'roles',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            12 => 
            array (
                'id' => 13,
                'key' => 'edit_roles',
                'table_name' => 'roles',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            13 => 
            array (
                'id' => 14,
                'key' => 'add_roles',
                'table_name' => 'roles',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            14 => 
            array (
                'id' => 15,
                'key' => 'delete_roles',
                'table_name' => 'roles',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            15 => 
            array (
                'id' => 16,
                'key' => 'browse_users',
                'table_name' => 'users',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            16 => 
            array (
                'id' => 17,
                'key' => 'read_users',
                'table_name' => 'users',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            17 => 
            array (
                'id' => 18,
                'key' => 'edit_users',
                'table_name' => 'users',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            18 => 
            array (
                'id' => 19,
                'key' => 'add_users',
                'table_name' => 'users',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            19 => 
            array (
                'id' => 20,
                'key' => 'delete_users',
                'table_name' => 'users',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            20 => 
            array (
                'id' => 21,
                'key' => 'browse_settings',
                'table_name' => 'settings',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            21 => 
            array (
                'id' => 22,
                'key' => 'read_settings',
                'table_name' => 'settings',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            22 => 
            array (
                'id' => 23,
                'key' => 'edit_settings',
                'table_name' => 'settings',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            23 => 
            array (
                'id' => 24,
                'key' => 'add_settings',
                'table_name' => 'settings',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            24 => 
            array (
                'id' => 25,
                'key' => 'delete_settings',
                'table_name' => 'settings',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            25 => 
            array (
                'id' => 26,
                'key' => 'browse_permissions',
                'table_name' => 'permissions',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            26 => 
            array (
                'id' => 27,
                'key' => 'read_permissions',
                'table_name' => 'permissions',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            27 => 
            array (
                'id' => 28,
                'key' => 'edit_permissions',
                'table_name' => 'permissions',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            28 => 
            array (
                'id' => 29,
                'key' => 'add_permissions',
                'table_name' => 'permissions',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            29 => 
            array (
                'id' => 30,
                'key' => 'delete_permissions',
                'table_name' => 'permissions',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            30 => 
            array (
                'id' => 31,
                'key' => 'browse_job_types',
                'table_name' => 'job_types',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            31 => 
            array (
                'id' => 32,
                'key' => 'read_job_types',
                'table_name' => 'job_types',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            32 => 
            array (
                'id' => 33,
                'key' => 'edit_job_types',
                'table_name' => 'job_types',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            33 => 
            array (
                'id' => 34,
                'key' => 'add_job_types',
                'table_name' => 'job_types',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            34 => 
            array (
                'id' => 35,
                'key' => 'delete_job_types',
                'table_name' => 'job_types',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            35 => 
            array (
                'id' => 36,
                'key' => 'browse_jobs',
                'table_name' => 'jobs',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            36 => 
            array (
                'id' => 37,
                'key' => 'read_jobs',
                'table_name' => 'jobs',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            37 => 
            array (
                'id' => 38,
                'key' => 'edit_jobs',
                'table_name' => 'jobs',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            38 => 
            array (
                'id' => 39,
                'key' => 'add_jobs',
                'table_name' => 'jobs',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            39 => 
            array (
                'id' => 40,
                'key' => 'delete_jobs',
                'table_name' => 'jobs',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            40 => 
            array (
                'id' => 41,
                'key' => 'browse_countries',
                'table_name' => 'countries',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            41 => 
            array (
                'id' => 42,
                'key' => 'read_countries',
                'table_name' => 'countries',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            42 => 
            array (
                'id' => 43,
                'key' => 'edit_countries',
                'table_name' => 'countries',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            43 => 
            array (
                'id' => 44,
                'key' => 'add_countries',
                'table_name' => 'countries',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            44 => 
            array (
                'id' => 45,
                'key' => 'delete_countries',
                'table_name' => 'countries',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            45 => 
            array (
                'id' => 46,
                'key' => 'browse_states',
                'table_name' => 'states',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            46 => 
            array (
                'id' => 47,
                'key' => 'read_states',
                'table_name' => 'states',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            47 => 
            array (
                'id' => 48,
                'key' => 'edit_states',
                'table_name' => 'states',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            48 => 
            array (
                'id' => 49,
                'key' => 'add_states',
                'table_name' => 'states',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            49 => 
            array (
                'id' => 50,
                'key' => 'delete_states',
                'table_name' => 'states',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            50 => 
            array (
                'id' => 51,
                'key' => 'browse_cities',
                'table_name' => 'cities',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            51 => 
            array (
                'id' => 52,
                'key' => 'read_cities',
                'table_name' => 'cities',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            52 => 
            array (
                'id' => 53,
                'key' => 'edit_cities',
                'table_name' => 'cities',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            53 => 
            array (
                'id' => 54,
                'key' => 'add_cities',
                'table_name' => 'cities',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            54 => 
            array (
                'id' => 55,
                'key' => 'delete_cities',
                'table_name' => 'cities',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            55 => 
            array (
                'id' => 56,
                'key' => 'browse_job_offers',
                'table_name' => 'job_offers',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            56 => 
            array (
                'id' => 57,
                'key' => 'read_job_offers',
                'table_name' => 'job_offers',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            57 => 
            array (
                'id' => 58,
                'key' => 'edit_job_offers',
                'table_name' => 'job_offers',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            58 => 
            array (
                'id' => 59,
                'key' => 'add_job_offers',
                'table_name' => 'job_offers',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            59 => 
            array (
                'id' => 60,
                'key' => 'delete_job_offers',
                'table_name' => 'job_offers',
                'created_at' => '2023-09-16 14:42:00',
                'updated_at' => '2023-09-16 14:42:00',
            ),
            60 => 
            array (
                'id' => 61,
                'key' => 'browse_business',
                'table_name' => 'business',
                'created_at' => '2023-10-23 14:13:53',
                'updated_at' => '2023-10-23 14:13:53',
            ),
            61 => 
            array (
                'id' => 62,
                'key' => 'read_business',
                'table_name' => 'business',
                'created_at' => '2023-10-23 14:13:54',
                'updated_at' => '2023-10-23 14:13:54',
            ),
            62 => 
            array (
                'id' => 63,
                'key' => 'edit_business',
                'table_name' => 'business',
                'created_at' => '2023-10-23 14:13:54',
                'updated_at' => '2023-10-23 14:13:54',
            ),
            63 => 
            array (
                'id' => 64,
                'key' => 'add_business',
                'table_name' => 'business',
                'created_at' => '2023-10-23 14:13:54',
                'updated_at' => '2023-10-23 14:13:54',
            ),
            64 => 
            array (
                'id' => 65,
                'key' => 'delete_business',
                'table_name' => 'business',
                'created_at' => '2023-10-23 14:13:54',
                'updated_at' => '2023-10-23 14:13:54',
            ),
            65 => 
            array (
                'id' => 66,
                'key' => 'browse_job_applications',
                'table_name' => 'job_applications',
                'created_at' => '2023-11-29 22:07:17',
                'updated_at' => '2023-11-29 22:07:17',
            ),
            66 => 
            array (
                'id' => 67,
                'key' => 'read_job_applications',
                'table_name' => 'job_applications',
                'created_at' => '2023-11-29 22:07:17',
                'updated_at' => '2023-11-29 22:07:17',
            ),
            67 => 
            array (
                'id' => 68,
                'key' => 'edit_job_applications',
                'table_name' => 'job_applications',
                'created_at' => '2023-11-29 22:07:17',
                'updated_at' => '2023-11-29 22:07:17',
            ),
            68 => 
            array (
                'id' => 69,
                'key' => 'add_job_applications',
                'table_name' => 'job_applications',
                'created_at' => '2023-11-29 22:07:17',
                'updated_at' => '2023-11-29 22:07:17',
            ),
            69 => 
            array (
                'id' => 70,
                'key' => 'delete_job_applications',
                'table_name' => 'job_applications',
                'created_at' => '2023-11-29 22:07:17',
                'updated_at' => '2023-11-29 22:07:17',
            ),
        ));
        
        
    }
}