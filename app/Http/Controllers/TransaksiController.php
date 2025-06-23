<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Transaksi;
use App\Models\Obat;
use Illuminate\View\View;

class TransaksiController extends Controller
{
    public function list(): View
	{
		$data = Transaksi::all();
		return view('transaksi.list', [ 'data' => $data ]);
	}
	
	public function list_obat($id): View
	{
		$data = Transaksi::where("id_barang",$id)->get();
		$dataBarang = Obat::find($id);
		return view('transaksi.kategori', [ 'data' => $data, 'kategori'=>$dataBarang ]);
	}
	
	public function detail($id): View
	{
		$data = Transaksi::find($id);
	return view('transaksi.detail', [ 'data' => $data ]);
	}
}
