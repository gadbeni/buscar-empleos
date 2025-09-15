<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Http;

// Models
use App\Models\Job;
use App\Models\Person;
use App\Models\JobOffer;

class PeopleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        DB::beginTransaction();
        try {
            $job_id = $request->job_id;
            if(!is_numeric($job_id)){
                $job = Job::create([
                    'job_type_id' => $request->job_type_id,
                    'name' => $job_id,
                    'slug' => Str::slug($job_id, '-'),
                ]);
                $job_id = $job->id;
            }

            $person = Person::create([
                'city_id' => $request->city_id,
                'job_id' => $job_id,
                'first_name' => $request->first_name,
                'last_name' => $request->last_name,
                'dni' => $request->dni,
                'gender' => $request->gender,
                'birthday' => $request->birthday,
                'phone' => $request->phone,
                'address' => $request->address,
                'short_description' => $request->type == 1 ? $request->short_description : ''
            ]);

            // if($request->type == 2){
            //     JobOffer::create([
            //         'person_id' => $person->id,
            //         'details' => $request->short_description
            //     ]);
            // }

            DB::commit();

            // if (setting('servers.whatsapp') && $request->phone) {
            //     if($request->type == 1){
            //         Http::get(setting('servers.whatsapp').'?number=591'.$request->phone.'&message=Hola '.$request->first_name.', gracias por registrarse en la *Bolsa Juvenil de Empleos*, se te notificará mediante éste medio los requerimentos de personal de su área profesional');
            //     }else{
            //         Http::get(setting('servers.whatsapp').'?number=591'.$request->phone.'&message=Gracias por registrar su requerimiento de personal en la *Bolsa Juvenil de Empleos*, se te notificará mediante éste medio las solicitudes de empleo de su requerimiento');
            //     }
            // }

            return response()->json(['success' => 1, 'type' => $request->type]);

        } catch (\Throwable $th) {
            DB::rollback();
            throw $th;
            return response()->json(['error' => 0]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\PeopleController  $peopleController
     * @return \Illuminate\Http\Response
     */
    public function show(PeopleController $peopleController)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\PeopleController  $peopleController
     * @return \Illuminate\Http\Response
     */
    public function edit(PeopleController $peopleController)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PeopleController  $peopleController
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PeopleController $peopleController)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PeopleController  $peopleController
     * @return \Illuminate\Http\Response
     */
    public function destroy(PeopleController $peopleController)
    {
        //
    }
}
