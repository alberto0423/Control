@extends('layouts.app')
@section('content')
    @guest
        @if(Route::has('register'))
        @endif
    @endguest
    <div class="container">
        <div class="row">
            <div class="col-sm-12 mx-auto">
                <div class="card border-0 shadow">
                 <!--   <div class="card-body">
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

                </div>
                <table class="table table-light table-hover">
                    <thead class="badge-dark">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Dirección</th>
                        <th>Redes Sociales</th>
                        <th>&nbsp;</th>
                        <th>&nbsp;</th>
                        <th>&nbsp;</th>

                    </tr>

                    </thead>

                    <tbody>
                    @foreach($users as $user)
                        <tr>
                            <td>{{$user->id}}</td>
                            <td>{{$user->name}}</td>
                            <td>{{$user->email}}</td>
                            <td>{{$user->phone}}</td>
                            <td>{{$user->address}}</td>
                            <td>{{$user->social_media}}</td>
                            <td>
                                <a type="button" href="{{url('usuarios/create')}}" class="btn btn-success">{{'Crear'}}</a>
                            </td>
                            <td>
                                <form action="{{route('usuarios.destroy',$user->id)}}" method="post">
                                    @method('DELETE')
                                    @csrf
                                    <input type="submit" value="Eliminar" class="btn btn-sm btn-danger"
                                           onclick="return confirm('¿Desea eliminar.... ?')">

                                </form>
                            </td>
                            <td>
                                <a type="button" href="{{url('usuarios/'. $user->id.'/edit')}}" class="btn btn-secondary" >
                                    {{'Editar'}}
                                </a>

                            </td>

                        </tr>


                    @endforeach
                    </tbody>

                </table>
            </div>

        </div>

    </div>

@endsection
