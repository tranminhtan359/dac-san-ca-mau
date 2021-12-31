<!DOCTYPE html>
<html lang="en">
<?php require "./form/head.php"; ?>
<?php
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $_SESSION['last_id'] = $id;
?>

    <body>
        <?php require "./form/header-bottom.php"; ?>
        <section>
            <div class="container">
                <div class="row">
                    <div>
                        <div class="product-details">
                            <!--product-details-->
                            <div class="col-sm-5">
                                <div class="view-product">
                                    <?php foreach ($product->getProductsByID($id) as $value) { ?>
                                        <img src="images/<?php echo $value['pro_image'] ?>" alt="" />
                                </div>
                                <?php require "./comment.php"; ?>
                            </div>
                            <div class="col-sm-7">
                                <div class="product-information">
                                    <!--/product-information-->
                                    <h2><?php echo $value['name'] ?></h2>
                                    <span>
                                        <span>Giá: <?php echo number_format($value['price']) ?> VNĐ</span> <br>
                                        <form action="" method="post">
                                            <label name="quantity" style="color: #000;font-size: 19px;">Số lượng:</label>
                                            <input type="text" value="1" name="num" style="border-radius: 20px;margin-right: 20px;" />
                                            <button style="background-color: #00a8ff;padding: 10px;border-radius: 20px;" name="cart" type="submit"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ</button><br>
                                        </form>
                                    </span>
                                    <p><b>Tình trạng hàng:</b> còn hàng</p>
                                    <p><b>Thương hiệu:</b> <?php echo $value['manu_name'] ?></p>
                                    <span class="detail-products">Chi tiết sản phẩm:<span class="desc-products"><?php echo  $value['description'] ?></span></span>

                                    <!--/product-information-->

                                </div>
                                <?php require "./comments.php"; ?>


                                <!--/product-details-->
                                <!--features_items-->
                            </div>

                        </div>
        </section>
        <?php require "phone.php"; ?>
        <?php require "./form/footer.php"; ?>
        <?php require "./form/script.php"; ?>
    </body>

</html>
<?php

                                    }
                                    if (isset($_POST['cart'])) {
                                        $num = $_POST['num'];
                                        $id = $_SESSION['last_id'];
                                        if (is_numeric($num)) {
                                            $_SESSION['cart'][$id] = $num - 1;
                                        }
                                        echo "<script>window.location.href='cart.php'</script>";
                                    }
                                } else {
                                    header("location:index.php");
                                }
