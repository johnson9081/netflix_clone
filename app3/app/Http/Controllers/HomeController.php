<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Response;
use DB; 
use App\User;
use App\Category;
use App\Biome;
use App\Tag;
use App\Post;
use App\Country;
use App\Commodity;
use App\Language;  
use App\Counter;
use App\Helpers\Common;
use Hash;
use Cookie; 

class HomeController extends Controller {
  
	 
     public function __construct() {
         
     }

    // Show Index Page
	public function index() {
        return view('index');   
    }

    public function find_details(Request $request){
        $check = DB::table('orders')->where('vin',$request->vin)->exists();
        if ($check) {
            echo json_encode(['success'=>true,'data'=>base64_encode($request->vin)]);
        }else{
            echo json_encode(['success'=>false,'data'=>[]]);
        }
    }

    public function search_record(Request $request,$id){
        $data['vin'] = base64_decode($id);
        $orders = DB::table('orders')->where('vin',$data['vin'])->orderBy('id','desc')->first();
        $service = DB::table('services')->where('vin',$data['vin'])->orderBy('id','desc')->first();
        return view('records',compact('orders','service','data'));
    }

}
