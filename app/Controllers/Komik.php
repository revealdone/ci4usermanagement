<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Komik extends BaseController
{
    protected $komikModel;
    public function __construct()
    {
        $this->komikModel = new KomikModel();
    }
    public function index()
    {
        // $komik = $this->komikModel->findAll();
        
        $data = [
            'title' => 'Daftar Komik',
            'komik' => $this->komikModel->getKomik()
            // cara konek db tanpa model
            // $db =\Config\Database::connect();
            // $komik = $db->query("select * FROM KOMIK");
            // dd($komik);
            // foreach ($komik->getResultArray() as $row)
            // {d($row);} 
        ];
        

        // $komikModel = new \App\Models\KomikModel();
        // $komikModel = new KomikModel();

        return view ('komik/index', $data);
    }

    public function detail ($slug)
    {
        
        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug)
        ];

        // jika komik tidak ada di table
        if(empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik' . $slug . 'tidak
            ditemukan.');
        }

        return view ('komik/detail', $data);
    }

    public function create()
    {
        // session();
        $data = [
            'title' => 'Form Tambah Data Komik',
            'validation' => \config\Services::validation()
        ];

        return view('komik/create', $data);
    }

    
    
    public function save()
    {
        // validasi input
        if(!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[komik.judul,id,$id]',
                'errors' => [
                    'required' => '{field} komik harus diisi.',
                    'is_unique' => '{field} komik sudah terdaftar'
                ]
                ],
                'sampul' => [
                    'rules' => 
                    'upload[sampul]|max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,
                    image/jpg,image/jpeg,image/png]',
                    'errors' => [
                        'uploaded' => 'Pilih gambar sampul terlebih dahulu',
                        'max_size' => 'Ukuran gambar terlalu besar',
                        'is_image' => 'Yang anda pilih bukan gambar',
                        'mime_in' => 'Yang anda pilih bukan gambar'
                    ]
                ]
        ])) {
            // $validation = \config\Services::validation();
            // return redirect()->to(base_url().'/komik/create')->withInput()->with('validation', $validation);
            
            return redirect()->to(base_url().'/komik/create')->withInput();
        }

        // ambil gambar
        $fileSampul = $this->request->getFile('sampul');
        // pindahkan file ke folder
        $fileSampul->move('img');
        // ambil nama file sampul
        $namaSampul = $fileSampul->getName();

        $slug = url_title($this->request->getVar('judul'),'-', true);
        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $this->request->getVar('sampul')
        ]);

        session()->setFlashdata('pesan','Data berhasil Ditambahkan.');
        
        return redirect()->to('/komik');
        // $this->request->getVar();
        // kalo mau ngambil satuan isi ke get var 'judul'
    }

    public function delete($id)
    {
        $this->komikModel->delete($id);
        session()->setFlashdata('pesan','Data berhasil Dihapus.');
        return redirect()->to('/komik');
    }

    public function edit($slug)
    {
        
            // session();
            $data = [
                'title' => 'Form Ubah Data Komik',
                'validation' => \config\Services::validation(),
                'komik' => $this->komikModel->getKomik($slug)
            ];
    
            return view('komik/edit', $data);
        
    }
    
    public function update($id)
    {
        // cek judul
        $komikLama = $this->komikModel->getKomik($this->request->getVar('slug'));
        if($komikLama['judul'] == $this->request->getVar('judul')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[komik.judul]';
        }

        if(!$this->validate([
            'judul' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} komik harus diisi.',
                    'is_unique' => '{field} komik sudah terdaftar'
                ]
                ]
                
        ])) {
            $validation = \config\Services::validation();
            return redirect()->to(base_url().'/komik/edit/'. $this->request->getVar('slug'))->withInput()->with('validation', $validation);
        }

        $slug = url_title($this->request->getVar('judul'),'-', true);
        $this->komikModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $this->request->getVar('sampul')
        ]);

        session()->setFlashdata('pesan','Data berhasil Diubah.');
        
        return redirect()->to('/komik');
    }
}
