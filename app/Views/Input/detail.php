<?= $this->extend('templates/index'); ?>

<?= $this->section('page-contents'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="mt-2">Detail Input</h2>
        <div class="card mb-3" style="max-width: 540px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="/img/<?= $input['gambar']; ?>" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><?= $input['barang']; ?></h5>
        <p class="card-text"><b>Penulis : </b><?= $input['harga']; ?></p>
        <p class="card-text"><small class="text-muted"><b>untung : </b>
    <?= $input['untung']; ?></small></p>

    <a href="/input/edit/<?= $input['sluk']; ?>" class="btn btn-warning">Edit</a>

    <form action="/input/<?= $input['id']; ?>" method="post" class="d-inline">
    <?= csrf_field(); ?>
    <input type="hidden" name="_method" value="DELETE">
      <button type="sumbit" class="btn btn-danger" onclick="return confirm('apakah anda yakin?');"
      >Delete</button>
  </form>

    <!-- <a href="/input/delete/<= $input['id']; ?>" class="btn btn-danger">Delete</a> -->
    <br></br>
    <a href="/input">Kembali ke daftar input</a>
      </div>
    </div>
  </div>
</div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>