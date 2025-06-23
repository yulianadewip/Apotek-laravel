<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get(
    '/obat',
    [ App\Http\Controllers\ObatController::class, 'list' ]
    );

Route::get(
        '/transaksi',
        [ App\Http\Controllers\TransaksiController::class, 'list' ]
        );

Route::get(
    '/obat/{id}',
    [ App\Http\Controllers\TransaksiController::class, 'list_obat' ]
    );

Route::get(
    '/transaksi/{id}',
    [ App\Http\Controllers\TransaksiController::class, 'detail' ]
    );

Route::get('/profil', function () {
        return view('profil');
        });
