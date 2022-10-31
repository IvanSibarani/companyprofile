<header>
    <div class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?= $path ?>"><img src="<?= $path . '/public/bin/img/inhutani.png' ?>" alt="logo" /></a>
            </div>
            <div class="navbar-collapse collapse ">
                <ul class="nav navbar-nav">
                    <li class="<?= isset($_GET['page']) ? '' : 'active' ?>"><a href="<?= $path ?>">Halaman Utama</a></li>
                    <li class="<?= isset($_GET['page']) && $_GET['page'] == 'tentang-kami' ? 'active' : '' ?>"><a href="<?= $path ?>?page=tentang-kami">Tentang Kami</a></li>
                    <li class="<?= isset($_GET['page']) && $_GET['page'] == 'areal-kerja' ? 'active' : '' ?>"><a href="<?= $path ?>?page=areal-kerja">Areal Kerja</a></li>
                    <li class="<?= isset($_GET['page']) && $_GET['page'] == 'kegiatan-usaha' ? 'active' : '' ?>"><a href="<?= $path ?>?page=kegiatan-usaha">Kegiatan Usaha</a></li>
                    <li class="<?= isset($_GET['page']) && $_GET['page'] == 'mitra-kerjasama' ? 'active' : '' ?>"><a href="<?= $path ?>?page=mitra-kerjasama">Mitra Kerjasama</a></li>
                    <li class="<?= isset($_GET['page']) && $_GET['page'] == 'galeri' ? 'active' : '' ?>"><a href="<?= $path ?>?page=galeri">Galeri</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>