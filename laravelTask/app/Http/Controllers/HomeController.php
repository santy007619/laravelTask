<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Crypt;
use DB;
use Auth;
use App\Models\Business;
use App\Models\User;
use Redirect;
use Log;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $user=Auth::user();
        $besiness=Business::where('user_id',$user->id)->paginate('5');
        return view('home',compact('besiness'));
    }
    public function business()
    {
        $user=Auth::user();
        $besiness=Business::where('user_id',$user->id)->get();
        return view('businessCreate',compact('besiness'));
    }

    public function store(request $request){
        $validation=Validator::make($request->all(),[
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255',
            'phone' => 'required|numeric|min:10',
            'address' => 'required|string|max:255',
            'website' => 'required|string|max:255',

        ]);

        if($validation->fails()) {

            return Redirect::back()->withErrors($validation);
        }
        $user=Auth::user();
        $post_array=$request->all();
        $data['user_id'] = $user->id;
        $data['name']=$post_array['name'];
        $data['email']=$post_array['email'];
        $data['phone']=$post_array['phone'];
        $data['address']=$post_array['address'];
        $data['website']=$post_array['website'];
        $Business_data=Business::create($data);
        return redirect()->route('home')->with('success','Add Business Data');
    }
}
