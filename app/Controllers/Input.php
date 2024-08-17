<?php

namespace App\Controllers;

use App\Models\InputModel;

class Input extends BaseController
{
    // public function index()
    // {
    //     $data['title'] = 'Input';
    //     return view('Input/index', $data);
    // }
    protected $inputModel;
    public function __construct()
    {
        $this->inputModel = new InputModel();
    }
    public function index()
    {
        // $input = $this->inputModel->findAll();
        
        $data = [
            'title' => 'Input',
            'input' => $this->inputModel->getInput()
            // cara konek db tanpa model
            // $db =\Config\Database::connect();
            // $input = $db->query("select * FROM input");
            // dd($input);
            // foreach ($input->getResultArray() as $row)
            // {d($row);} 
        ];
        

        // $inputModel = new \App\Models\inputModel();
        // $inputModel = new inputModel();

        return view ('input/index', $data);
    }

    public function detail ($sluk)
    {
        
        $data = [
            'title' => 'Detail Input',
            'input' => $this->inputModel->getInput($sluk)
        ];

        // jika input tidak ada di table
        if(empty($data['input'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('barang input' . $sluk . 'tidak
            ditemukan.');
        }

        return view ('input/detail', $data);
    }

    public function create()
    {
        // session();
        $data = [
            'title' => 'Form Tambah Data input',
            'validation' => \config\Services::validation()
        ];

        return view('input/create', $data);
    }

    
    
    public function save()
    {
        // validasi input
        if(!$this->validate([
            'barang' => [
                'rules' => 'required|is_unique[input.barang,id,$id]',
                'errors' => [
                    'required' => '{field} input harus diisi.',
                    'is_unique' => '{field} input sudah terdaftar'
                ]
                ],
                // 'gambar' => [
                //     'rules' => 
                //     'upload[sampul]|max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,
                //     image/jpg,image/jpeg,image/png]',
                //     'errors' => [
                //         'uploaded' => 'Pilih gambar sampul terlebih dahulu',
                //         'max_size' => 'Ukuran gambar terlalu besar',
                //         'is_image' => 'Yang anda pilih bukan gambar',
                //         'mime_in' => 'Yang anda pilih bukan gambar'
                //     ]
                // ]
        ])) {
            // $validation = \config\Services::validation();
            // return redirect()->to(base_url().'/input/create')->withInput()->with('validation', $validation);
            
            return redirect()->to(base_url().'/input/create')->withInput();
        }

        // // ambil gambar
        // $fileGambar = $this->request->getFile('gambar');
        // // pindahkan file ke folder
        // $fileGambar->move('img');
        // // ambil nama file sampul
        // $namaGambar = $fileGambar->getName();

        $sluk = url_title($this->request->getVar('barang'),'-', true);
        $this->inputModel->save([
            // 'gambar' => $this->request->getVar('gambar'),
            'barang' => $this->request->getVar('barang'),
            'sluk' => $sluk,
            'harga' => $this->request->getVar('harga'),
            'untung' => $this->request->getVar('untung'),
            'stock' => $this->request->getVar('stock')
        ]);

        session()->setFlashdata('pesan','Data berhasil Ditambahkan.');
        
        return redirect()->to('/input');
        // $this->request->getVar();
        // kalo mau ngambil satuan isi ke get var 'barang'
    }

    public function delete($id)
    {
        $this->inputModel->delete($id);
        session()->setFlashdata('pesan','Data berhasil Dihapus.');
        return redirect()->to('/input');
    }

    public function edit($sluk)
    {
        
            // session();
            $data = [
                'title' => 'Form Ubah Data input',
                'validation' => \config\Services::validation(),
                'input' => $this->inputModel->getInput($sluk)
            ];
    
            return view('input/edit', $data);
        
    }
    
    public function update($id)
    {
        // cek barang
        $inputLama = $this->inputModel->getInput($this->request->getVar('sluk'));
        if($inputLama['barang'] == $this->request->getVar('barang')) {
            $rule_barang = 'required';
        } else {
            $rule_barang = 'required|is_unique[input.barang]';
        }

        if(!$this->validate([
            'barang' => [
                'rules' => $rule_barang,
                'errors' => [
                    'required' => '{field} input harus diisi.',
                    'is_unique' => '{field} input sudah terdaftar'
                ]
                ]
                
        ])) {
            $validation = \config\Services::validation();
            return redirect()->to(base_url().'/input/edit/'. $this->request->getVar('sluk'))->withInput()->with('validation', $validation);
        }

        $sluk = url_title($this->request->getVar('barang'),'-', true);
        $this->inputModel->save([
            'id' => $id,
            'barang' => $this->request->getVar('barang'),
            'sluk' => $sluk,
            'harga' => $this->request->getVar('harga'),
            'untung' => $this->request->getVar('untung'),
            'stock' => $this->request->getVar('stock')
        ]);

        session()->setFlashdata('pesan','Data berhasil Diubah.');
        
        return redirect()->to('/input');
    }
    


}
