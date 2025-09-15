@extends('layouts.master')

@section('content')
    <main id="main">
        <!-- ======= Features Section ======= -->
        <section id="features" class="features" style="margin-top: 100px">
            <div class="container">
                <div class="section-title" data-aos="fade-up">
                    <h2>Regístrate</h2>
                    <p>Ingresa tus datos personales y profsionales en nuestra Bolsa Juvenil de Empleos en el formulario que se ajuste a tus necesidades.</p>
                </div>

                @php
                    $tab = request('tab') ?? 1
                @endphp
                <div class="row">
                    <div class="col-lg-5 mt-2 mb-tg-0 order-2 order-lg-1">
                        <ul class="nav nav-tabs flex-column">
                            <li class="nav-item" data-aos="fade-up">
                                <a class="nav-link @if($tab == 1) active show @endif" data-bs-toggle="tab" href="#tab-1">
                                    <h3>Busco empleo</h3>
                                    <p class="text-muted">Registra tus datos persona y datos profesionales para conectarte con empresas que demanden servicios profesionales acorde a tu perfil profesional.</p>
                                </a>
                            </li>
                            <li class="nav-item mt-2" data-aos="fade-up" data-aos-delay="100">
                                <a class="nav-link @if($tab == 2) active show @endif" data-bs-toggle="tab" href="#tab-2">
                                    <h3>Requerimiento de personal</h3>
                                    <p class="text-muted">Registra los datos de tu empresa y el perfil profesional que necesite para conectarte con profesionales del área.</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-7 order-1 order-lg-2" data-aos="zoom-in">
                        <div class="tab-content">
                            <div class="tab-pane @if($tab == 1) active show @endif" id="tab-1">
                                {{-- <figure>
                                <img src="assets/img/features-1.png" alt="" class="img-fluid">
                                </figure> --}}
                                <div style="padding: 20px 10px">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <form class="form-submit" action="{{ route('people.store') }}" method="post">
                                                @csrf
                                                <input type="hidden" name="type" value="1">
                                                <div class="row">
                                                    <div class="form-group col-md-12 mb-3">
                                                        <label for="city_id" class="text-muted mb-2">Seleccione su lugar de residencia</label>
                                                        <select name="city_id" class="form-control select-city_id">
                                                            <option value="">--Seleccione ciudad/localidad--</option>
                                                            @foreach (App\Models\City::where('status', 1)->where('deleted_at', NULL)->get() as $item)
                                                            <option value="{{ $item->id }}">{{ $item->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="first_name" class="text-muted mb-2">Nombre(s)</label>
                                                        <input type="text" name="first_name" class="form-control" placeholder="Agustin" required>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="last_name" class="text-muted mb-2">Apellidos</label>
                                                        <input type="text" name="last_name" class="form-control" placeholder="Mejia" required>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="dni" class="text-muted mb-2">Cédula de identidad</label>
                                                        <input type="text" name="dni" class="form-control" placeholder="12345678" required>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="gender" class="text-muted mb-2">Género</label>
                                                        <select name="gender" class="form-control" required>
                                                            <option value="">--Seleccione su género--</option>
                                                            <option value="femenino">Femenino</option>
                                                            <option value="masculino">Masculino</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="birthday" class="text-muted mb-2">Fecha de nacimiento</label>
                                                        <input type="date" name="birthday" class="form-control" required>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="phone" class="text-muted mb-2">N&deg; de celular</label>
                                                        <input type="text" name="phone" class="form-control" placeholder="75199157" required>
                                                    </div>
                                                    <div class="form-group col-md-12 mb-3">
                                                        <label for="address" class="text-muted mb-2">Dirección</label>
                                                        <input type="text" name="address" class="form-control" placeholder="Av. Bolivar Esq. 18 de nov nro 123" required>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="job_type_id" class="text-muted mb-2">Área profesional</label>
                                                        <select name="job_type_id" id="select-job_type_id-1" class="form-control select-job_type_id" data-id="1" required>
                                                            <option value="">--Seleccione su área profesional--</option>
                                                            @foreach (App\Models\JobType::with('jobs')->where('id', '>', 1)->where('status', 1)->where('deleted_at', NULL)->get() as $item)
                                                            <option value="{{ $item->id }}" data-item='@json($item)'>{{ $item->name }}</option>
                                                            @endforeach
                                                            <option value="1">Otra</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="job_id" class="text-muted mb-2">Profesión/Ocupación</label>
                                                        <select name="job_id" id="" class="form-control select-job_id" required>
                                                            <option value="">--Seleccione su profesión/ocupación--</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-12 mb-3">
                                                        <label for="short_description" class="text-muted mb-2">Breve descripción/experiencia laboral</label>
                                                        <textarea name="short_description" class="form-control" rows="3" placeholder=""></textarea>
                                                    </div>
                                                    <div class="d-grid gap-2 mt-3">
                                                        <button class="btn btn-primary btn-submit" type="submit"><i class="fa fa-edit"></i> Registrar datos</button>
                                                      </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane @if($tab == 2) active show @endif" id="tab-2">
                                <div style="padding: 20px 10px">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <form class="form-submit" action="{{ route('people.store') }}" method="post">
                                                @csrf
                                                <input type="hidden" name="type" value="2">
                                                <div class="row">
                                                    <div class="form-group col-md-12 mb-3">
                                                        <label for="city_id" class="text-muted mb-2">Seleccione la ciudad/localidad donde requiere el personal</label>
                                                        <select name="city_id" class="form-control select-city_id">
                                                            <option value="">--Seleccione ciudad/localidad--</option>
                                                            @foreach (App\Models\City::where('status', 1)->where('deleted_at', NULL)->get() as $item)
                                                            <option value="{{ $item->id }}">{{ $item->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-12 mb-3">
                                                        <label for="first_name" class="text-muted mb-2">Nombre de su empresa <i class="fa fa-question-circle" data-bs-toggle="tooltip" data-bs-placement="top" title="Nombre de tu empresa o tu nombre completo"></i></label>
                                                        <input type="text" name="first_name" class="form-control" placeholder="Empresa constructora Los Hermanos s.r.l." required>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="dni" class="text-muted mb-2">NIT/CI</label>
                                                        <input type="text" name="dni" class="form-control" placeholder="12345678" required>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="phone" class="text-muted mb-2">N&deg; de celular</label>
                                                        <input type="text" name="phone" class="form-control" placeholder="75199157" required>
                                                    </div>
                                                    <div class="form-group col-md-12 mb-3">
                                                        <label for="address" class="text-muted mb-2">Dirección</label>
                                                        <input type="text" name="address" class="form-control" placeholder="Av. Bolivar Esq. 18 de nov nro 123" required>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="job_type_id" class="text-muted mb-2">Área profesional</label>
                                                        <select name="job_type_id" id="select-job_type_id-2" class="form-control select-job_type_id" data-id="2" required>
                                                            <option value="">--Seleccione su área profesional--</option>
                                                            @foreach (App\Models\JobType::with('jobs')->where('id', '>', 1)->where('status', 1)->where('deleted_at', NULL)->get() as $item)
                                                            <option value="{{ $item->id }}" data-item='@json($item)'>{{ $item->name }}</option>
                                                            @endforeach
                                                            <option value="1">Otra</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-6 mb-3">
                                                        <label for="job_id" class="text-muted mb-2">Profesión/Ocupación</label>
                                                        <select name="job_id" class="form-control select-job_id" required>
                                                            <option value="">--Seleccione su profesión/ocupación--</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-12 mb-3">
                                                        <label for="short_description" class="text-muted mb-2">Breve descripción de su solicitud de personal</label>
                                                        <textarea name="short_description" class="form-control" rows="3" placeholder=""></textarea>
                                                    </div>
                                                    <div class="d-grid gap-2 mt-3">
                                                        <button class="btn btn-primary btn-submit" type="submit"><i class="fa fa-edit"></i> Registrar datos</button>
                                                      </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Features Section -->
    </main>
@endsection

@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.5/dist/sweetalert2.min.css">
    <style>
        .select2{
            width: 100% !important
        }
    </style>
@endsection

@section('javascript')
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.5/dist/sweetalert2.all.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.select-city_id').select2();
            $('.select-job_type_id').select2();
            $('.select-job_id').select2({tags: true});
            

            $('.select-job_type_id').change(function(){
                $('.select-job_id').html('<option value="">--Seleccione su profesión/ocupación--</option>');
                let item = $('#select-job_type_id-'+$(this).data('id')+' option:selected').data('item');
                if(item){
                    item.jobs.map(item => {
                        $('.select-job_id').append(`<option value="${item.id}">${item.name}</option>`);
                    });
                }
            });

            $('.form-submit').submit(function(e){
                e.preventDefault();
                $('.form-submit .btn-submit').attr('disabled', 'disabled');
                $('.form-submit .btn-submit').html('<i class="fa fa-edit"></i> Registrando datos...');
                $.post($(this).attr('action'), $(this).serialize(), function(res){
                    if(res.success){
                        Swal.fire(
                            'Bienj hecho',
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
            });
        });
    </script>
@endsection