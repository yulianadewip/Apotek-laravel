<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Obat;
use Illuminate\View\View;
class ObatController extends Controller
{
    public function list(): View
	{
		$data = Obat::all();
		return view('obat.list', [ 'data' => $data ]);
	}
}
