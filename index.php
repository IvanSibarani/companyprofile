<?php
include('./config.php');
include('./database/config.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>PT. INHUTANI IV</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="http://webthemez.com" />
    <!-- css -->
    <link href="./public/bin/css/bootstrap.min.css" rel="stylesheet" />
    <link href="./public/bin/css/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="./public/bin/css/jcarousel.css" rel="stylesheet" />
    <link href="./public/bin/css/flexslider.css" rel="stylesheet" />
    <link href="./public/bin/js/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="./public/bin/css/style.css" rel="stylesheet" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body>
    <div id="wrapper">
        <!-- start header -->
        <?php include('./partials/navbar.php') ?>
        <!-- end header -->
        <?php
        if (isset($_GET['page'])) {
            $pages = $_GET['page'];

            switch ($pages) {
                case 'tentang-kami':
                    include_once('./pages/tentang-kami.php');
                    break;
                case 'areal-kerja':
                    include_once('./pages/areal-kerja.php');
                    break;
                case 'kegiatan-usaha':
                    include_once('./pages/kegiatan-usaha.php');
                    break;
                case 'mitra-kerjasama':
                    include_once('./pages/mitra-kerjasama.php');
                    break;
                case 'galeri':
                    include_once('./pages/galeri.php');
                    break;
                default:
                    include_once('./pages/halaman-utama.php');
                    break;
            }
        } else {
            include_once('./pages/halaman-utama.php');
        }
        ?>
        <!-- start footer -->
        <?php include('./partials/footer.php') ?>
        <!-- end footer -->
    </div>
    <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
    <!-- javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./public/bin/js/jquery.js"></script>
    <script src="./public/bin/js/jquery.easing.1.3.js"></script>
    <script src="./public/bin/js/bootstrap.min.js"></script>
    <script src="./public/bin/js/jquery.fancybox.pack.js"></script>
    <script src="./public/bin/js/jquery.fancybox-media.js"></script>
    <script src="./public/bin/js/portfolio/jquery.quicksand.js"></script>
    <script src="./public/bin/js/portfolio/setting.js"></script>
    <script src="./public/bin/js/jquery.flexslider.js"></script>
    <script src="./public/bin/js/animate.js"></script>
    <script src="./public/bin/js/custom.js"></script>
    <script src="./public/bin/js/owl-carousel/owl.carousel.js"></script>
</body>

</html>