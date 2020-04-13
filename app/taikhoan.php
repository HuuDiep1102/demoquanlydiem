<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class taikhoan extends Model
{
    public $taikhoan;
    public $matkhau;

    public function __construct($taikhoan,$matkhau)
    {
    	$this->taikhoan = $taikhoan;
    	$this->matkhau = $matkhau;
    }
}
