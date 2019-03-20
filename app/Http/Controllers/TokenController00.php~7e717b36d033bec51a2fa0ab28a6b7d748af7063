<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
class TokenController00 extends Controller
{

	public function index()
	{
		return "hellow";
	}

    public function generateToken(Request $request,$id){
    	$user=User::find($id);
    	$api_token='test';
    	$user->update([
    			'api_token'=>$api_token
    	]);
    }


}
