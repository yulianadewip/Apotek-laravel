<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Transaksi extends Model
{
    use HasFactory;
	protected $table = 'transaksi';
	
	protected $fillable = [
		"id_barang",
		"nama_sewa",
		"harga_sewa",
		"gambar",
		"lampiran",
		"lampiran_nama"
	];
	
	public function kategori():BelongsTo
	{
		return $this->belongsTo(Obat::class, 'id_barang');
	}
	

	protected $casts = [
		'lampiran' => 'array',
		'lampiran_nama' => 'array',
	];
}
