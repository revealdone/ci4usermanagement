<?= $this->extend('templates/index'); ?>

<?= $this->section('page-contents'); ?>

    <div class="container">
        <div class="row">
            <div class="col">
              <a href="/input/create" 
              class="btn btn-primary mt-3">Tambah Data Penjualan</a>
                <h1 class="mt-2">Daftar Penjualan</h1>
                <?php if(session()->getFlashdata('pesan')) : ?>
                  <div class="alert alert-success" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                  </div>

                  <?php endif ?>
            <table class="table">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Gambar</th>
      <th scope="col">Barang</th>
      <th scope="col">Harga Kotor</th>
      <th scope="col">Untung</th>
      <th scope="col">Stock</th>
      <th scope="col">Aksi</th>
    </tr>
  </thead>
  <tbody>
  <?php $i= 1; ?>
    <?php foreach ($input as $k) : ?>
      
      <div class="shopping-cart"><div class="cart-item">
    <tr>
      <th scope="row"><?= $i++ ?></th>
      <td><img src="/img/<?= $k['gambar']; ?>" alt="" 
      class="sampul"></td>
      <td><?= $k['barang']; ?></td>
      <td><?= $k['harga']; ?></td>
      <td><?= $k['untung']; ?></td>
      <td><?= $k['stock']; ?></td>
      <td>
        <a href="/input/<?= $k['sluk']; ?>" class="btn btn-success">Detail</a>
      </td>
    </tr>
    </div>
      </div>
    <?php endforeach; ?>
    <script src="<?= base_url(); ?>/css/style.css"></script>
  </tbody>
</table>
            </div>
        </div>
    </div>

<?= $this->endSection(); ?>