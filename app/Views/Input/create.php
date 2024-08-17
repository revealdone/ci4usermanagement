<?= $this->extend('templates/index'); ?>

<?= $this->section('page-contents'); ?>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Form Tambah Data Barang</h2>

            <form action="/input/save" method="post" enctype="multipart/from-data">
                <?= csrf_field(); ?>
  <div class="row mb-3">
    <label for="barang" class="col-sm-2 col-form-label">Barang</label>
    <div class="col-sm-10 ">
      <!-- <= ($validation->hasError('barang')) ? 'is-invalid' : ''; ?> -->
      <input type="text" 
      class="form-control is-invalid"
        id="barang" name="barang"   autofocus value="<?= old('barang');
      ?>">
      <!-- <= $validation->getError('barang'); ?> -->
      <div class="invalid-feedback">
      Tidak boleh kosong / sama barangnya 
    </div>
    </div>
  </div>
  <div class="row mb-3">
    <label for="harga" class="col-sm-2 col-form-label">harga</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="harga" name="harga" value="<?= old('harga');
      ?>">
    </div>
  </div>
  <div class="row mb-3">
    <label for="untung" class="col-sm-2 col-form-label">untung</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="untung" name="untung" value="<?= old('untung');
      ?>">
    </div>
  </div>
  <div class="row mb-3">
    <label for="stock" class="col-sm-2 col-form-label">stock</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="stock" name="stock" value="<?= old('stock');
      ?>">
    </div>
  </div>
  <!-- <div class="row mb-3">
    <label for="stock" class="col-sm-2 col-form-label">Stock</label>
    <div class="col-sm-10">
    <div class="input-group mb-3">
  <input type="file" class="form-control is-invalid" id="stock" name="stock">
  <label class="input-group-text" for="Stock">Pilih gambar...</label>
</div> -->

    </div>
  </div>
  <div class="form-group row">
  <div class="col-sm-10">
  <button type="submit" class="btn btn-primary">Tambah Data</button>
</form>
</div>
</div>
</div>

<?= $this->endSection(); ?>