<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class diem extends Model
{
    public $masinhvien;
    public $malich; 
    public $diemthanhphan;
    public $diemcuoiky;
    public $diemtong;
    public $diemchu;
    public $diemhe4;
    public $ketqua;
    public $trangthai;
    public function __construct($malich,$masinhvien,$diemthanhphan,$diemcuoiky,$diemtong,$diemchu,$diemhe4,$ketqua)
    {
    	$this->masinhvien = $masinhvien;
    	$this->malich = $malich;
    	$this->diemthanhphan = $diemthanhphan;
    	$this->diemcuoiky = $diemcuoiky;
    	$this->diemtong = $diemtong;
        $this->diemchu = $diemchu;
    	$this->diemhe4 = $diemhe4;
        $this->ketqua = $ketqua;
    }
}
