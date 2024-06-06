<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PedidoController;
use App\Http\Controllers\DetalleController;

Route::get('api/pedido', [PedidoController::class, 'index'])->name('pedidos');

Route::get('api/detalle', [DetalleController::class, 'index'])->name('detalles');
