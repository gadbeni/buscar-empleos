@extends('layouts.master')

@section('content')
    <main id="main">
        <!-- ======= Features Section ======= -->
        <section id="features" class="features" style="margin-top: 100px">
            <div class="container">
               <h2>Ofertas Laborales</h2>
               @php
                    $business=App\Models\Business::where('deleted_at', NULL)->where('status', 1)->with('joboffers')->orderby('created_at','desc')->get();
                    $job_offers=App\Models\JobOffer::where('deleted_at', null)->get();
                    $index=0;
               @endphp

                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <th>N°</th>
                            <th>Negocio</th>
                            <th>Descripción del Negocio</th>
                            <th>Celular</th>
                            <th>Acción</th>
                        </thead>
                        <tbody>
                            @foreach ($business as $item)
                                @php
                                    // $negocio=App\Models\Business::find($item->business_id);
                                    $index=$index+1;
                                    //$job_offer_count= count($item->joboffers);
                                    $count_not_revision=0;
                                    foreach ($item->joboffers as $item2) {
                                        if ($item2->status!=1) {
                                            $count_not_revision+=1;
                                        }
                                    }
                                @endphp
                                <tr>
                                    <td>{{$index}} </td>
                                    <td>{{$item->name}}</td>
                                    <td>{{$item->description}}</td>
                                    <td>{{$item->phone}}</td>
                                    
                                    @if ($count_not_revision>0)
                                        <td>
                                            <div>
                                                <button id="name_negocio" value="{{$item->name}}" hidden></button>
                                                <button id="mybutton_joboffer" class="btn btn-primary" onclick="set_modal_job_offer({{$item->joboffers}})" data-toggle="modal" data-target="#myModal"><i class="fa fa-arrow-down"></i> Ver Ofertas del Negocio</button>
                                            </div>
                                        </td>
                                    @endif
                                </tr> 
                            @endforeach
                        </tbody>
                    </table>
                </div>

              
            </div>

              
        </section>
        <!-- End Features Section -->

       

    </main>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Ofertas de Empleo</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <!-- Tabs -->
              <ul class="nav nav-tabs" id="myTabs" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active" id="tab1-tab" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="true">Disponibles</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="tab2-tab" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false">Ocupados</a>
                </li>
              </ul>
  
              <!-- Tab Content -->
              <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <th>N°</th>
                                <th>Descripción del Trabajo</th>
                                <th>Acción</th>
                            </thead>
                            <tbody id="tbody_activos"></tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab2-tab">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <th>N°</th>
                                <th>Descripción del Trabajo</th>
                            </thead>
                            <tbody id="tbody_inactivos"></tbody>
                        </table>
                    </div>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
              {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
            </div>
          </div>
        </div>
      </div>
    </div>
  
  
</div>
      
     
@endsection

@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.5/dist/sweetalert2.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
    <style>
        .select2{
            width: 100% !important
        }
    </style>
@endsection

@section('javascript')
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.5/dist/sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>

    
    <script>
        async function set_modal_job_offer( joboffers){
            var name=$("#name_negocio").val()
            var count_activos=0;
            var count_inactivos=0;
            var activos_data="";
            var inactivos_data="";
                for (let index = 0; index < joboffers.length; index++) {
                    console.log(joboffers[index]);
                    if (joboffers[index].status==2) {
                        count_activos+=1;
                        var mensaje= 'Hola, vi su anuncio en la página web de la Bolsa de Trabajo, y me interesa el cargo del siguiente anuncio: \n*'+joboffers[index].details+'*\nde el Negocio: *'+name+'*, espero su pronta respuesta.'
                        mensaje= encodeURIComponent(mensaje)
                        var url= 'https://wa.me/591'+{{setting('servers.whatsapp')}}+'?text='+mensaje
                        activos_data+="<tr><td>"+count_activos+"</td><td>"+joboffers[index].details+"</td><td><a class='btn btn-success' href="+url+"><i class='fa fa-whatsapp' aria-hidden='true'></i> WhatsApp</a></td></tr>"
                    }
                    if(joboffers[index].status==3){
                        count_inactivos+=1;
                        inactivos_data+="<tr><td>"+count_inactivos+"</td><td>"+joboffers[index].details+"</td></tr>"
                    }
                }
                if (count_activos>0) {
                    $("#tbody_activos").html(activos_data)
                }
                else{
                    $("#tbody_activos").html("<tr><td colspan='2'><h4>No hay datos disponibles.</h4></td></tr>")
                }
                if (count_inactivos>0) {
                    $("#tbody_inactivos").html(inactivos_data)
                }
                else{
                    $("#tbody_inactivos").html("<tr><td colspan='2'><h4>No hay datos disponibles.</h4></td></tr>")
                }

            }
        $(document).ready(function() {
            
            /* $('.select-city_id').select2();
            $('.select-job_type_id').select2();
            $('.select-job_id').select2({tags: true}); */
            

           /*  $('.select-job_type_id').change(function(){
                $('.select-job_id').html('<option value="">--Seleccione su profesión/ocupación--</option>');
                let item = $('#select-job_type_id-'+$(this).data('id')+' option:selected').data('item');
                if(item){
                    item.jobs.map(item => {
                        $('.select-job_id').append(`<option value="${item.id}">${item.name}</option>`);
                    });
                }
            }); */

           /*  $('.form-submit').submit(function(e){
                e.preventDefault();
                $('.form-submit .btn-submit').attr('disabled', 'disabled');
                $('.form-submit .btn-submit').html('<i class="fa fa-edit"></i> Registrando datos...');
                $.post($(this).attr('action'), $(this).serialize(), function(res){
                    if(res.success){
                        Swal.fire(
                            'Bien hecho',
                            'Datos registrados correctamente',
                            'success'
                        );
                        $('.form-submit').trigger('reset');
                    }else{
                        Swal.fire(
                            'Error',
                            'Ha ocurrido un error, intente de nuevo',
                            'error'
                        )
                    }

                    $('.form-submit .btn-submit').removeAttr('disabled');
                    $('.form-submit .btn-submit').html('<i class="fa fa-edit"></i> Registrar datos');
                    $('.select-city_id').trigger('change');
                    $('.select-job_type_id').trigger('change');
                    $('.select-job_id').trigger('change');
                });
            }); */
           

        });
    </script>
@endsection