<?= $this->extend('templates/index'); ?>

<?= $this->section('page-contents'); ?>
<h3><i class="fa fa-fw fa-table"></i> Manajemen Data Produk</h3>

<div class="card">
    <div class="card-header">
        <h3 class="card-title">
            <button type="button" class="btn btn-sm btn-primary"
                onclick="window.location='<?= site_url('produk/add') ?>'">
                <i class="fa fa-plus"></i> Tambah Data
            </button>
        </h3>

        <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                <i class="fas fa-times"></i>
            </button>
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <?= form_open('produk/index') ?>
            <?= csrf_field(); ?>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Cari Kode/Nama Produk" name="cariproduk" autofocus>
                <div class="input-group-append">
                    <button class="btn btn-primary" type="sumbit" name="tombolcariproduk">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
            <?= form_close(); ?>
            <table class="table table-striped table-bordered table-sm">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Kode Barcode</th>
                        <th>Nama Produk</th>
                        <th>Kategori</th>
                        <th>Satuan</th>
                        <th>Harga Beli(Rp)</th>
                        <th>Harga Jual(Rp)</th>
                        <th>Stock</th>
                        <th>#</th>
                    </tr>
                </thead>
                <tbody>
                    <?php

                    $nomor = 1 + (($nohalaman - 1) * 10);

                    foreach ($dataproduk as $row) :
                    ?>
                    <tr>
                        <td><?= $nomor++; ?></td>
                        <td><?= $row['kodebarcode']; ?></td>
                        <td><?= $row['namaproduk']; ?></td>
                        <td><?= $row['katnama']; ?></td>
                        <td><?= $row['satnama']; ?></td>
                        <td style="text-align: right;"><?= number_format($row['harga_beli'], 2, ",", "."); ?></td>
                        <td style="text-align: right;"><?= number_format($row['harga_jual'], 2, ",", "."); ?></td>
                        <!-- <td style="text-align: right;">?= number_format($row['stock'], 0, ",", "."); ?></td> -->
                        <td></td>
                        <td>
                        <button type="button" class="btn btn-danger btn-sm" title="Hapus Kategori"
                                onclick="hapus('<?= $row['katid'] ?>','<?= $row['katnama'] ?>')">
                                <i class="fa fa-trash-alt"></i>
                            </button>
                            <button type="button" class="btn btn-info btn-sm" title="Edit Kategori"
                                onclick="edit('<?= $row['katid'] ?>')">
                                <i class="fa fa-pencil-alt"></i>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <div class="float-left">
                <?= $pager->links('produk', 'paging_data'); ?>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>