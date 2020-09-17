@extends('layouts.app')
@section('content')

<div id="accordion">
    <div class="card">
        <div class="card-header bg-primary" id="headingOne">

            <h5 class="mb-0 text-center">
                <button class="btn btn-link text-white" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Editar datos del usuario
                </button>

                <a class="col float-right">
                    <a href="{{url('usuarios/')}}"  class="btn btn-link text-white">Inicio</a>
                </a>
            </h5>
        </div>

        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <form action="{{url('/usuarios/'.$users->id)}}" method="post">
                            @method('PATCH')
                            <div class="form-group">
                                <label for="name">{{'Nombre'}}</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Ingresa tu nombre" value="{{$users->name}}">
                            </div>




                            <div class="form-group">
                                <label for="phone">{{'Email'}}</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="{{$users->email}}">

                            </div>


                            <div class="form-group">
                                <label for="password">{{'Contraseña'}}</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Contraseña" value="{{$users->password}}">

                            </div>


                            <div class="form-group">
                                <label for="phone">{{'Teléfono'}}</label>
                                <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone" value="{{$users->phone}}">

                            </div>


                            <div class="form-group">
                                <label for="address">{{'Dirección'}}</label>
                                <input type="text" class="form-control" id="address" name="address" placeholder="Address" value="{{$users->address}}">

                            </div>


                            <div class="form-group">
                                <label for="social">{{'Social'}}</label>
                                <input type="text" class="form-control" id="social" name="social" placeholder="Social media" value="{{$users->social_media}}">

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

