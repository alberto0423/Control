<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class ListUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('users.index',[
            'users' =>  User::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('users.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user   =   new User();
        $user->name             =   $request->get('name');
        $user->email            =   $request->get('email');
        $user->password         =   bcrypt($request->get('password'));
        $user->phone            =   $request->get('phone');
        $user->address          =   $request->get('address');
        $user->social_media     =   $request->get('social');

        $user->save();

/*
       User::create([
            'name'          => $request->name,
           'email'          =>  $request->email,
           'password'       =>  bcrypt($request->password),
           'phone'          =>  $request->phone,
           'address'        =>  $request->address,
           'social_media'   =>  $request->social
       ]);
*/

/*
$datos = array(
    'name'          => $request->name,
    'email'          =>  $request->email,
    'phone'          =>  $request->phone,
    'address'        =>  $request->address,
    'social_media'   =>  $request->social
);
*/

#dd($datos);

       return redirect('usuarios')->with('Mensaje','Usuario Agregado con éxito');
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
        $users = User::findOrFail($id);

        return view('users.edit',compact('users'));
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
        $user = User::find($id);
        $user->name         =   $request->get('name');
        $user->email        =   $request->get('email');
        $user->phone        =   $request->get('phone');
        $user->address      =   $request->get('address');
        $user->social_media =   $request->get('social');
        $user->save();

        return redirect('/usuarios');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::destroy($id);

        return  back();
    }
}
