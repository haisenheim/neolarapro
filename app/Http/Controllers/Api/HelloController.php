<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\EmployeeResource;
use App\Models\Employee;

    class HelloController extends Controller{

        public function getEmployees(){
            $items = EmployeeResource::collection(Employee::all());
            return response()->json($items);
        }
    }
