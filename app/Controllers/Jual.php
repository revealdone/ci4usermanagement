<?php

namespace App\Controllers;

class Jual extends BaseController
{
    public function index()
    {
        $data['title'] = 'Jual';
        return view('jual/index', $data);
    }

    


}
