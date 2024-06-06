<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Detalle;
use App\Http\Controllers\Controller;

class DetalleController extends Controller
{
    public function index(){
        $detalles = Detalle::all();
        $i = 0; 
        return view('Admin.detalle.index', compact('detalles', 'i'));
    }
}
