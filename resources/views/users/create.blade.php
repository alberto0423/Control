@extends('layouts.app')

@section('content')




    <!--<div class="card-body">
        @if($errors->any())
            <div class="alert alert-danger">
                @foreach($errors->all() as $error)
                    - {{$error}} <br>
                @endforeach
            </div>
        @endif
        <form action="" method="POST">
            <div class="form-row">
                <div class="col-sm-3">
                    <input type="text" name="name" class="form-control" placeholder="Nombre"
                           value="{{old('name')}}">

                </div>

                <div class="col-sm-3">
                    <input type="email" name="email" class="form-control" placeholder="Email"
                           value="{{old('email')}}">

                </div>



                <div class="col-sm-3">
                    <input type="password" name="password" class="form-control" placeholder="Contraseña">

                </div>


                <div class="col-sm-3">
                    <input type="number" class="form-control" id="phone" name="phone" placeholder="Phone">

                </div>


                <div class="col-sm-3">
                    <input type="text" class="form-control" id="address" name="address" placeholder="Address">

                </div>

                <div class="col-sm-3">
                    <input type="text" class="form-control" id="social" name="social" placeholder="Social media">
                </div>


                <div class="col-auto">
                    @csrf
                    <button type="submit" class="btn btn-primary">Enviar</button>


                </div>


            </div>
        </form>

    </div>-->


    <div id="accordion">
        <div class="card">
            <div class="card-header bg-primary" id="headingOne">

                <h5 class="mb-0 text-center">
                    <button class="btn btn-link text-white" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Registro de nuevos usuarios
                    </button>

                    <a class="col float-right">
                        <a href="{{url('usuarios/')}}"  class="btn btn-link text-white">Regresar</a>
                    </a>
                </h5>
            </div>

            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <form action="{{url('usuarios')}}" method="post">
                                <div class="form-group col-auto">
                                    <label for="name">{{'Nombre'}}</label>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Ingresa tu nombre">
                                </div>

                                <div class="form-group col-auto">
                                    <label for="paterno">{{'Paterno'}}</label>
                                    <input type="text" class="form-control" id="paterno" name="paterno" placeholder="Apellido paterno">
                                </div>

                                <div class="form-group col-auto">
                                    <label for="materno">{{'Materno'}}</label>
                                    <input type="text" class="form-control" id="materno" name="materno" placeholder="Apellido materno">
                                </div>


                                <div class="form-group col-auto">
                                    <label for="phone">{{'Email'}}</label>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email">

                                </div>


                                <div class="form-group col-auto">
                                    <label for="password">{{'Contraseña'}}</label>
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Contraseña">

                                </div>


                                <div class="form-group col-auto">
                                    <label for="phone">{{'Teléfono'}}</label>
                                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone">

                                </div>


                                <div class="form-group col-auto">
                                    <label for="address">{{'Dirección'}}</label>
                                    <input type="text" class="form-control" id="address" name="address" placeholder="Address">

                                </div>


                                <div class="form-group col-auto">
                                    <label for="social">{{'Social'}}</label>
                                    <input type="text" class="form-control" id="social" name="social" placeholder="Social media">

                                </div>
                                @csrf
                                <button type="submit" class="btn btn-primary col-xl-12">Guardar</button>
                            </form>
                        </div>

                    </div>

                </div>
            </div>
        </div>

    </div>

@endsection
