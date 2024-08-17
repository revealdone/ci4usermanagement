<?php

namespace App\Models;

use CodeIgniter\Model;

class InputModel extends Model
{
    protected $table = 'input';
    protected $useTimestamps = true;
    protected $allowedFields = ['barang', 'sluk', 'harga', 'untung', 'stock'];
    protected $createdField  = 'created_j';
    protected $updatedField  = 'updated_j';

    public function getInput($sluk = false )
    {
        if($sluk == false) 
        {
            return $this->findAll();
        }

        return $this->where(['sluk' => $sluk])->first();
    }
}