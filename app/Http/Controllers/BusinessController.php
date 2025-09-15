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
use App\Models\Business;

class BusinessController extends Controller
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
        // return $request;
       

        DB::beginTransaction();
        try {
            $person = Person::create([
                'city_id' => $request->city_id,
                'first_name' => $request->first_name_person,
                'last_name' => $request->last_name_person,
                'dni' => $request->dni,
                // 'short_description' => $request->type == 1 ? $request->short_description : ''
            ]);

            $business = Business::create([
                'city_id' => $request->city_id,
                'job_types_id' => $request->job_type_id,
                'person_id' => $person->id,
                'name' => $request->name,
                'nit' => $request->dni,
                'phone' => $request->phone,
                'address' => $request->address,
                'description' => $request->description,
                'status'=> 0
            ]);

          
            if ($request->short_description!=NULL) {
                JobOffer::create([
                    'business_id' => $business->id,
                    'status' => 1,
                    'details' => $request->short_description
                ]);
            }
            

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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        
        $business= Business::find($request->business_id);
        $business->status=1;
        $business->save();

        return redirect("/admin/business");
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $business= Business::find($id);
        $job_offers= JobOffer::where('business_id', $id)->get();
        if ($job_offers!=null) {
            foreach ($job_offers as $item) {
                $item->delete();
            }
        }
        $business->delete();

        return redirect("/admin/business")->with(['message'=> 'Successfully deleted!!']);
    }

    public function setStatus(Request $request, $id)
    {
        return 'hola2';

        // $business= Business::find($id);
        // $business->status=1;
        // $business->save();

        // return view('admin.business');
      
    }
}
