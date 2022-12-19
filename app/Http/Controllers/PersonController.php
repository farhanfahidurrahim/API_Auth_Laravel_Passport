<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class PersonController extends Controller
{
    //Index
    public function index()
    {
        $person=DB::table('persons')->get();
        return response()->json($person);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name'=>'required',
            'phone'=>'required',
        ])

        $data=aray();
        $data['name']=$request->name;
        $data['phone']=$request->phone;
        DB::table('persons')->insert($data);
        return response([
            'message'=>"Person Added"
        ],200);
    }

    public function update(Request $request,$id)
    {
        $request->validate([
            'name'=>'required',
            'phone'=>'required',
        ])

        $data=aray();
        $data['name']=$request->name;
        $data['phone']=$request->phone;
        DB::table('persons')->where('id',$id)->update($data);
        return response([
            'message'=>"Person Updated"
        ],200);
    }

    public function destroy($id)
    {
        DB::table('persons')->where('id',$id)->delete();
        return response([
            'message'=>'Delete Done!'
        ],200);
    }
}
