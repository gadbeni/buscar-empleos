<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DataTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('data_types')->delete();
        
        \DB::table('data_types')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'users',
                'slug' => 'users',
                'display_name_singular' => 'User',
                'display_name_plural' => 'Users',
                'icon' => 'voyager-person',
                'model_name' => 'TCG\\Voyager\\Models\\User',
                'policy_name' => 'TCG\\Voyager\\Policies\\UserPolicy',
                'controller' => 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}',
                'created_at' => '2021-06-02 17:55:30',
                'updated_at' => '2022-08-14 23:31:50',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'menus',
                'slug' => 'menus',
                'display_name_singular' => 'Menu',
                'display_name_plural' => 'Menus',
                'icon' => 'voyager-list',
                'model_name' => 'TCG\\Voyager\\Models\\Menu',
                'policy_name' => NULL,
                'controller' => '',
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => NULL,
                'created_at' => '2021-06-02 17:55:30',
                'updated_at' => '2021-06-02 17:55:30',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'roles',
                'slug' => 'roles',
                'display_name_singular' => 'Role',
                'display_name_plural' => 'Roles',
                'icon' => 'voyager-lock',
                'model_name' => 'TCG\\Voyager\\Models\\Role',
                'policy_name' => NULL,
                'controller' => 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}',
                'created_at' => '2021-06-02 17:55:31',
                'updated_at' => '2022-08-14 23:40:05',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'permissions',
                'slug' => 'permissions',
                'display_name_singular' => 'Permiso',
                'display_name_plural' => 'Permisos',
                'icon' => 'voyager-list',
                'model_name' => 'App\\Models\\Permission',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":"table_name","order_display_column":"table_name","order_direction":"asc","default_search_key":null}',
                'created_at' => '2022-05-24 15:21:20',
                'updated_at' => '2022-05-24 15:21:20',
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'job_types',
                'slug' => 'job-types',
                'display_name_singular' => 'Área profesional',
                'display_name_plural' => 'Áreas profesionales',
                'icon' => 'voyager-list',
                'model_name' => 'App\\Models\\JobType',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2023-05-20 13:05:45',
                'updated_at' => '2023-05-20 15:44:25',
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'jobs',
                'slug' => 'jobs',
                'display_name_singular' => 'Profesión',
                'display_name_plural' => 'Profesiones',
                'icon' => 'voyager-list',
                'model_name' => 'App\\Models\\Job',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2023-05-20 13:06:43',
                'updated_at' => '2023-05-20 15:44:44',
            ),
            6 => 
            array (
                'id' => 7,
                'name' => 'countries',
                'slug' => 'countries',
                'display_name_singular' => 'País',
                'display_name_plural' => 'Paises',
                'icon' => 'voyager-list',
                'model_name' => 'App\\Models\\Country',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}',
                'created_at' => '2023-05-20 13:10:44',
                'updated_at' => '2023-05-20 13:10:44',
            ),
            7 => 
            array (
                'id' => 8,
                'name' => 'states',
                'slug' => 'states',
                'display_name_singular' => 'Departamento',
                'display_name_plural' => 'Departamentos',
                'icon' => 'voyager-list',
                'model_name' => 'App\\Models\\State',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2023-05-20 13:11:25',
                'updated_at' => '2023-05-20 15:43:57',
            ),
            8 => 
            array (
                'id' => 9,
                'name' => 'cities',
                'slug' => 'cities',
                'display_name_singular' => 'Ciudad',
                'display_name_plural' => 'Ciudades',
                'icon' => 'voyager-list',
                'model_name' => 'App\\Models\\City',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2023-05-20 13:12:57',
                'updated_at' => '2023-05-20 15:45:16',
            ),
            9 => 
            array (
                'id' => 10,
                'name' => 'job_offers',
                'slug' => 'job-offers',
                'display_name_singular' => 'Oferta de trabajo',
                'display_name_plural' => 'Ofertas de trabajos',
                'icon' => 'voyager-news',
                'model_name' => 'App\\Models\\JobOffer',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'details' => '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}',
                'created_at' => '2023-05-26 14:31:03',
                'updated_at' => '2023-11-27 11:07:02',
            ),
            10 => 
            array (
                'id' => 11,
                'name' => 'business',
                'slug' => 'business',
                'display_name_singular' => 'Business',
                'display_name_plural' => 'Business',
                'icon' => 'voyager-helm',
                'model_name' => 'App\\Models\\Business',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 1,
                'details' => '{"order_column":"created_at","order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}',
                'created_at' => '2023-10-23 14:13:53',
                'updated_at' => '2023-11-22 09:51:08',
            ),
            11 => 
            array (
                'id' => 12,
                'name' => 'job_applications',
                'slug' => 'job-applications',
                'display_name_singular' => 'Trabajo Obtenido',
                'display_name_plural' => 'Trabajos Obtenidos',
                'icon' => 'voyager-thumbs-up',
                'model_name' => 'App\\Models\\JobApplication',
                'policy_name' => NULL,
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 1,
                'details' => '{"order_column":"id","order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}',
                'created_at' => '2023-11-29 22:07:17',
                'updated_at' => '2023-11-29 22:17:46',
            ),
        ));
        
        
    }
}