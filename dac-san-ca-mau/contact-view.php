<!DOCTYPE html>
<html lang="en">
<?php require "./form/head.php"; ?>

<body>
   <!-- <header>
      <h1>LIÊN HỆ</h1>
   </header> -->
   <?php include('../dac-san-ca-mau/form/header-bottom.php') ?>
   <link rel="stylesheet" href="../dac-san-ca-mau/css/style-contact.css">
   <div id="form">
      <h1>Liên Hệ</h1>
      <div class="fish" id="fish"></div>
      <div class="fish" id="fish2"></div>

      <form name="frmContact" id="waterform" frmContact="" method="post" action="" enctype="multipart/form-data" onsubmit="return validateContactForm()" style="margin-left: 30%;">

         <div class="formgroup" id="name-form">
            <label for="userName">Họ Tên</label>
            <input type="text" id="userName" name="userName" require />
         </div>

         <div class="formgroup" id="email-form">
            <label for="userEmail">Email</label>
            <input type="email" id="userEmail" name="userEmail" require />
         </div>

         <div class="formgroup" id="message-form">
            <label for="content">Nội dung của bạn</label>
            <textarea id="content" name="content" require></textarea>
         </div>

         <input type="submit" name="send" value="Gửi!" />
         <div id="statusMessage">
            <?php
            if (!empty($message)) {
            ?>
               <p class='<?php echo $type; ?>Message'><?php echo $message; ?></p>
            <?php
            }
            ?>
         </div>
         <div style="margin-left: -60px;font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;">
            <div style="color: black; font-size: 25px;">
               <h1 style="font-size: 35px;margin-left: 50px;">Hướng dẫn mua hàng</span></h1> <br>
               <a href="#">Cách 1. Gọi điện hoặc nhắn tin để đặt hàng</a>
               <p>- Hotline: 0834072431 (Gọi điện, nhắn tin, zalo) <br>
                  - Điện thoại: 0888606347 gặp Mr.Quan <br>
                  Nếu nhắn tin khách hàng vui lòng nhắn tin có đầy đủ nội dung <br>
                  Họ tên, số điện thoại, địa chỉ, tên sản phẩm và số lượng</p>

               <a href="#">Cách 2. Mua trước tiếp tại cửa hàng chúng tôi</a>
               <p>- Địa chỉ cửa hàng: Số 49A, Hùng Vương, <br> phường 5, TP Cà Mau, tỉnh Cà Mau</p>

               <a href="#">Cách 3. Chat với nhân viên chăm sóc khách hàng</a>
               <p>Khách hàng có thể chat với nhân viên chăm sóc khách hàng <br>
                  bằng bộ chat phía dưới trang web. Khách hàng có thể gửi thông <br>
                  tin đặt hàng cho nhân viên tại đây.</p>

               <a href="#">Cách 4. Đặt hàng online trên website</a>
               <p>Khách hàng có thể đặt hàng online sau vài bước, <br>
                  chúng tôi sẽ liên lạc ngay để tư vấn và xác nhân đơn hàng cho quý khách hàng.</p>
            </div>
         </div>

      </form>
   </div>
   <?php
   // if (!empty($_POST["send"])) {
   //    $name = $_POST["userName"];
   //    $email = $_POST["userEmail"];
   //    $content = $_POST["content"];

   //    $toEmail = "ngohuutuan221020@gmail.com";
   //    $mailHeaders = "From: " . $email;

   //    if(mail($toEmail,"Liên hệ từ khách hàng", $content, $mailHeaders)) {
   //       $message = "Your contact information is received successfully.";
   //       $type = "success";
   //    }
   // }
   ?>
   <script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
   <script type="text/javascript">
      function validateContactForm() {
         var valid = true;

         $(".info").html("");
         $(".input-field").css('border', '#e0dfdf 1px solid');
         var userName = $("#userName").val();
         var userEmail = $("#userEmail").val();
         var content = $("#content").val();

         if (userName == "") {
            $("#userName-info").html("Required.");
            $("#userName").css('border', '#e66262 1px solid');
            valid = false;
         }
         if (userEmail == "") {
            $("#userEmail-info").html("Required.");
            $("#userEmail").css('border', '#e66262 1px solid');
            valid = false;
         }
         if (!userEmail.match(/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/)) {
            $("#userEmail-info").html("Invalid Email Address.");
            $("#userEmail").css('border', '#e66262 1px solid');
            valid = false;
         }

         if (subject == "") {
            $("#subject-info").html("Required.");
            $("#subject").css('border', '#e66262 1px solid');
            valid = false;
         }
         if (content == "") {
            $("#userMessage-info").html("Required.");
            $("#content").css('border', '#e66262 1px solid');
            valid = false;
         }
         return valid;
      }
   </script>
   <!-- <script>
      $('document').ready(function() {
         $('input[type="text"], input[type="email"], textarea').focus(function() {
            var background = $(this).attr('id');
            $('#' + background + '-form').addClass('formgroup-active');
            $('#' + background + '-form').removeClass('formgroup-error');
         });
         $('input[type="text"], input[type="email"], textarea').blur(function() {
            var background = $(this).attr('id');
            $('#' + background + '-form').removeClass('formgroup-active');
         });

         function errorfield(field) {
            $(field).addClass('formgroup-error');
            console.log(field);
         }

         $("#waterform").submit(function() {
            var stopsubmit = false;

            if ($('#name').val() == "") {
               errorfield('#name-form');
               stopsubmit = true;
            }
            if ($('#email').val() == "") {
               errorfield('#email-form');
               stopsubmit = true;
            }
            if (stopsubmit) return false;
         });

      });
   </script> -->
   <?php include('../dac-san-ca-mau/form/script.php') ?>
   <?php require "./form/footer.php"; ?>
   <?php require "phone.php"; ?>
</body>

</html>