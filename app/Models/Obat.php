<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Obat extends Model
{
    use HasFactory;
	protected $table = 'obat';
	
	protected $fillable = [
		'nama_barang',
		'gambar',
		
		
		
	];

public function Transaksi():BelongsTo
	{
		return $this->hasMany(Transaksi::class, 'id_barang');
	}
}
