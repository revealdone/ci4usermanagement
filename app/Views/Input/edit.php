<?= $this->extend('templates/index'); ?>

<?= $this->section('page-contents'); ?>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Form Ubah Data Penjualan</h2>


            <form action="/input/update/<?= $input['id']; ?>" method="post">
                <?= csrf_field(); ?>
                <input type="hidden" name="sluk" value="<?= $input['sluk']; ?>">
  <div class="row mb-3">
    <label for="barang" class="col-sm-2 col-form-label">Barang</label>
    <div class="col-sm-10 ">
      <!-- <= ($validation->hasError('judul')) ? 'is-invalid' : ''; ?> -->
      <input type="text" 
      class="form-control is-invalid"
        id="barang" name="barang"   autofocus value="<?= (old('barang')) ? 
        old('barang') : $input['barang'] ?>">
      <!-- <= $validation->getError('judul'); ?> -->
      <div class="invalid-feedback">
      Tidak boleh kosong / sama judulnya 
    </div>
    </div>
  </div>
  <div class="row mb-3">
    <label for="harga" class="col-sm-2 col-form-label">Harga Jual</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="harga" name="harga" 
      value="<?= (old('harga')) ? old('harga') : $input['harga'] ?>">
    </div>
  </div>
  <div class="row mb-3">
    <label for="untung" class="col-sm-2 col-form-label">Keuntungan</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="untung" name="untung" value="<?= (old('untung')) ? 
        old('untung') : $input['untung'] ?>">
    </div>
  </div>
  <div class="row mb-3">
    <label for="stock" class="col-sm-2 col-form-label">Stock</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="stock" name="stock" 
      value="<?= (old('stock')) ? 
        old('stock') : $input['stock'] ?>">
    </div>
  </div>
  <div class="form-group row">
  <div class="col-sm-10">
  <button type="submit" class="btn btn-primary">Ubah Data</button>
</form>
</div>
</div>
</div>
<?= $this->endSection(); ?>