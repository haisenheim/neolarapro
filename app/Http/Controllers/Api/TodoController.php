<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Mail\ContactMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class TodoController extends Controller
{
    //
    public function sendEmail(){
        $data= [
            'titre'=>'Hello EAD depuis l\'API',
            'message'=>'API API Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sed nisi explicabo, sunt blanditiis perferendis facere doloribus cupiditate distinctio quia assumenda molestias ex velit eveniet laboriosam voluptatem qui dolorum. Amet, consectetur.'
        ];
        Mail::to('clementessomba@alliages-tech.com')
        ->send(new ContactMail($data));
        return response()->json('ok');
    }
}
