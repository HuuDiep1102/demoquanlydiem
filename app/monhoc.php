<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class monhoc extends Model
{
    public $mamonhoc;
    public $tenmonhoc;
    public $trangthai;

    public function __construct($mamonhoc,$tenmonhoc,$trangthai)
    {
    	$this->mamonhoc = $mamonhoc;
    	$this->tenmonhoc = $tenmonhoc;
        $this->trangthai = $trangthai;
    }
}
