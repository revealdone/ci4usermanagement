<?php

namespace App\Controllers;

class Coba extends BaseController
{
    public function index()
    {
        echo 'welcome';
    }

    public function about($nama = '')
    {
        echo "halo , nama saya $nama.";
    }
    // public function about($nama = '', $umur = 0)
    // {
        // echo "halo , nama saya $nama, saya berumur $umur tahun.";
    // }
}
