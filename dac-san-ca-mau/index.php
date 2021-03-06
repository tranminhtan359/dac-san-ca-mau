     <!DOCTYPE html>
     <html lang="en">
     <?php require "./form/head.php"; ?>
     <?php
        $perPage = 6;
        if (!isset($_GET['page'])) {
            $_GET['page'] = 1;
        }
        $page = $_GET['page'];
        $total = count($product->getAllProducts());
        $url = $_SERVER['PHP_SELF'];
        ?>

     <body>
         <?php require "./form/header-bottom.php"; ?>
         <section style="background-color: #E9EDF0;">
             <div class="container body">
                 <div class="row">
                     <div class="col-sm-3">
                         <div class="left-sidebar">

                             <h2>Sản Phẩm</h2>
                             <div class="panel-group category-products" id="accordian">
                                 <!--category-productsr-->
                                 <div class="panel panel-default">
                                     <?php foreach ($protype->getAllProtype() as $value) { ?>
                                         <div class="panel-heading">
                                             <h4 class="panel-title"><a href="cate.php?type_id=<?php echo $value['type_id'] ?>"><?php echo $value['type_name'] ?></a>
                                             </h4>
                                         </div>
                                     <?php } ?>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div class="col-sm-9 padding-right">
                         <div id="slideshow">
                             <div class="slide-wrapper">
                                 <div class="slide">
                                     <img class="img-slide" src="../dac-san-ca-mau/images/dac-san1.jpg">
                                 </div>
                                 <div class="slide">
                                     <img class="img-slide" src="../dac-san-ca-mau/images/dac-san2.jpg">
                                 </div>
                                 <div class="slide">
                                     <img class="img-slide" src="../dac-san-ca-mau/images/dac-san3.jpg">
                                 </div>
                             </div>
                         </div>
                         <div class="features_items">
                             <!--features_items-->
                             <h2 class="title text-center">Top Sản Phẩm Nổi Bật</h2>
                             <!-- Foreach here -->
                             <?php foreach ($product->getPopularProducts() as $value) { ?>
                                 <div class="col-sm-4">
                                     <div class="product-image-wrapper">
                                         <div class="single-products">
                                             <div class="productinfo text-center">
                                                 <a href="detail.php?id=<?php echo $value['ID'] ?>">
                                                     <img class="hinhanh" src="images/<?php echo $value['pro_image'] ?>" alt="" />
                                                     <p><a class="name-products" href="detail.php?id=<?php echo $value['ID'] ?>"><?php echo $value['name'] ?></a>
                                                     </p>
                                                     <h2><?php echo number_format($value['price']) ?> VND</h2>
                                                     <p></p>
                                                     <a href="cart.php?id=<?php echo $value['ID'] ?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                 </a>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             <?php } ?>
                         </div>

                         <div class="new_items">
                             <!--new_items-->
                             <h2 class="title text-center">Sản Phẩm Mới Nhất</h2>
                             <?php foreach ($product->getNewProducts() as $value) { ?>
                                 <div class="col-sm-4">
                                     <div class="product-image-wrapper">
                                         <div class="single-products">
                                             <div class="productinfo text-center">
                                                 <a href="detail.php?id=<?php echo $value['ID'] ?>">
                                                     <img class="hinhanh" src="images/<?php echo $value['pro_image'] ?>" alt="" />
                                                     <p><a class="name-products" href="detail.php?id=<?php echo $value['ID'] ?>"><?php echo $value['name'] ?></a>
                                                     </p>
                                                     <h2><?php echo number_format($value['price']) ?> VND</h2>
                                                     <p></p>
                                                     <a href="cart.php?id=<?php echo $value['ID'] ?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                 </a>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             <?php } ?>
                         </div>
                         <!--features_items-->
                     </div>
                 </div>
         </section>
         <?php require "phone.php"; ?>
         <?php require "./form/footer.php"; ?>
         <?php require "./form/script.php"; ?>
     </body>

     </html>
     </div>