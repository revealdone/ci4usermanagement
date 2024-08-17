<?php

use Myth\Auth\Entities\Group;
?>
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

<!-- Sidebar - Brand -->
<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
    <div class="sidebar-brand-icon rotate-n-15">
        <i class="fas fa-code"></i>
    </div>
    <div class="sidebar-brand-text mx-3"><?= user()->username; ?> <sup></sup></div>
</a>


<?php if(in_groups('admin')) : ?>
<!-- Divider -->
<!-- <hr class="sidebar-divider my-0"> -->
<hr class="sidebar-divider my">

<!-- Heading -->
<div class="sidebar-heading">
    User Management
</div>


<!-- Nav Item - user list -->
<li class="nav-item">
    <a class="nav-link" href="<?= base_url('admin'); ?>">
        <i class="fas fa-users"></i>
        <span>User List</span></a>
</li>
    <?php endif; ?>
<!-- Divider -->
<!-- <hr class="sidebar-divider my-0"> -->
<hr class="sidebar-divider my">

<!-- Heading -->
<div class="sidebar-heading">
    User Profile
</div>

<!-- Nav Item - My Profile -->
<li class="nav-item">
    <a class="nav-link" href="<?= base_url('user'); ?>">
        <i class="fas fa-user"></i>
        <span>My Profile</span></a>
</li>

<!-- Nav Item - Edit Profile -->
<li class="nav-item">
    <script src="sweetalert2.min.js">asd</script>
    <link rel="stylesheet" href="sweetalert2.min.css">
    <a class="nav-link" href="/admin">
        <i class="fas fa-user-edit"></i>
        <span>Edit Profile</span></a>
</li>
<li class="nav-item">
    <a class="nav-link" href="<?= base_url('input'); ?>">
        <i class="fas fa-user-edit"></i>
        <span>Input Penjualan</span></a>
</li>
<!-- Nav Item - Edit Profile -->
<li class="nav-item">
    <a class="nav-link" href="<?= base_url('pages'); ?>">
        <i class="fas fa-user-edit"></i>
        <span>Komik</span></a>
</li>
<li class="nav-item">
    <a class="nav-link" href="<?= base_url('Jual'); ?>">
        <i class="fas fa-user-edit"></i>
        <span>Jual</span></a>
</li>
<li class="nav-item">
    <a class="nav-link" href="<?= base_url('Kategori'); ?>">
        <i class="fas fa-user-edit"></i>
        <span>Kategori</span></a>
</li>
<li class="nav-item">
    <a href="<?= site_url('satuan/index') ?>" class="nav-link">
        <i class="nav-icon fa fa-tasks"></i>
        <p>
            Satuan
        </p>
    </a>
</li>
<li class="nav-item">
    <a href="<?= site_url('produk/index') ?>" class="nav-link">
        <i class="nav-icon fa fa-table"></i>
        <p>
            Produk
        </p>
    </a>
</li>

<!-- Divider -->
<hr class="sidebar-divider">

<!-- logout -->
<li class="nav-item">
    <a class="nav-link" href="<?= base_url('logout'); ?> ">
        <i class="fas fa-sign-out-alt"></i>
        <span>Logout</span></a>
</li>

<!-- Divider -->
<hr class="sidebar-divider d-none d-md-block">

<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>

</ul>
<!-- End of Sidebar -->