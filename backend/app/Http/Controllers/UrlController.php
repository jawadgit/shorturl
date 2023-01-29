<?php

namespace App\Http\Controllers;

use App\Models\Url;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;

class UrlController extends Controller
{

    /**
     * Url List
     */
    public function list()
    {
        $urls = Url::all(['id','destination','slug', 'views']);
        return response()->json($urls);
    }

    /**
     * 
     * Create New Url Request 
     */
    public function create(Request $request)
    {
        $request->validate([
            'destination' => ['required', 'url'],
        ]);

        $url = Url::create([
            'destination' => $request->destination,
            'slug' => randomString(),
            'views' => 0,
        ]);

        return $url;
    }

    /**
     * incomplete due to sanctum error
     */
    public function views($id)
    {
        //$url = Url::where("id", id)->update(["views" => 1]);

        //return redirect()->route('urls')->with('success','Url created successfully.');

        //return $url;
    }

    /**
     * Show Destination data
     */
    public function show(Request $request){

        $destination = Url::select('id', 'destination', 'slug', 'views', 'created_at', 'updated_at')
                           ->where('destination', '=', $request->destination)
                           ->get();

        return response()->json($destination, 200);
    }
}
