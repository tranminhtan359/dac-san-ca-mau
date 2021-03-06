<!DOCTYPE html>
<html lang="en">

<?php require "./form/head.php"; ?>

<body>
    <?php require "./form/header-bottom.php"; ?>
    <?php if (isset($_GET['key'])) {
        $key = ($_GET['key']);
    ?>
        <?php
        $perPage = 6;
        if (!isset($_GET['page'])) {
            $_GET['page'] = 1;
        }
        $page = $_GET['page'];
        $total = count($product->getProductsByKey($key));
        $url = $_SERVER['PHP_SELF'];
        ?>
        <section>
            <div class="container">
                <div class="row">

                    <div    >
                        <div class="features_items">
                            <!--features_items-->
                            <h2 class="title text-center">Kết quả tìm kiếm</h2>
                            <?php foreach ($product->getProductsByPageAndByResult($page, $perPage, $key) as $value) { ?>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <a href="detail.php?id=<?php echo $value['ID'] ?>">
                                                    <img class="img-fluid img-products" style="width: 250px;" src="images/<?php echo $value['pro_image'] ?>" alt="" />
                                                    <p class="title-products "><?php echo $value['name'] ?></p>
                                                    <p class="price-products"><?php echo number_format($value['price']) ?> VND</p>
                                                    <a href="cart.php?id=<?php echo $value['ID'] ?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                            <ul class="pagination col-sm-12">
                                <h3 style=text-align:center>
                                    </p><?php echo $product->paginateForResult($url, $total, $page, $perPage, $key) ?></p>
                                </h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php require "phone.php"; ?>
        <?php require "./form/footer.php"; ?>
        <?php require "./form/script.php"; ?>
</body>

</html>
<?php } else
        header("location:index.php");
?>