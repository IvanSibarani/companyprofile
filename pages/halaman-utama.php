<?php
$pages = "Halaman Utama";
$sqlPages = "SELECT id FROM menu_list WHERE menu_name='$pages'";
$resultPages = $conn->query($sqlPages);
$idPage = $resultPages->num_rows > 0 ? $resultPages->fetch_assoc()['id'] : 0;
?>

<section id="featured">
    <!-- Slider -->
    <div id="main-slider" class="flexslider">
        <ul class="slides">
            <div id="main-slider" class="flexslider">
        <ul class="slides">
            <li>
                <img src="<?= $path . '/public/bin/img/INHUTANI/kantor1.jpeg' ?>" alt="" width="300px" height="600px" />
                <div class="flex-caption">
                    <div class="item_introtext">
                        <strong>PT INHUTANI IV</strong>
                    </div>
                </div>
            </li>
            <li>
                <img src="<?= $path . '/public/bin/img/INHUTANI/KU1.jpg' ?>" alt="" width="300px" height="600px" />
                <div class="flex-caption">
                    <div class="item_introtext">
                        <strong>PT INHUTANI IV</strong>
                    </div>
                </div>
            </li>
            <li>
                <img src="<?= $path . '/public/bin/img/INHUTANI/pinus1.jpg' ?>" alt="" width="300px" height="600px" />
                <div class="flex-caption">
                    <div class="item_introtext">
                        <strong>PT INHUTANI IV</strong>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <!-- end slider -->
</section>
<section class="callaction">
    <div class="container">
        <div class="row">
            
                <div class="aligncenter">
                    
            </div>
        </div>
    </div>
</section>

        </div>
    </div>
</section>