<?php
use Illuminate\Support\Str;

if(!function_exists('randomString')){
    function randomString(){
        return strtolower(Str::random(5));
    }
}
