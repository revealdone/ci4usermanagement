<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Home Datang'
        ];
        
        return view('pages/home', $data);
        
    }


    public function about()
    {
        $data = [
            'title' => 'About Me'
        ];
        
        echo view ('pages/about',$data);
        
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jl. abc No. 123',
                    'kota' => 'Jakarta'
                ],
                [
                    'tipe' => 'Kantor',
                    'alamat' => 'Jl. Petukangan utara No. 48',
                    'kota' => 'Jakata'
                ]
            ]
        ];

        return view('pages/contact', $data);
    }

}
