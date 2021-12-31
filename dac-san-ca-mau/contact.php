<?php
if(!empty($_POST["send"])) {
	$name = $_POST["userName"];
	$email = $_POST["userEmail"];
	$content = $_POST["content"];

	$conn = mysqli_connect("localhost", "root", "", "email","3325",'utf8_general_ci') or die("Connection Error: " . mysqli_error($conn));
	mysqli_query($conn, "INSERT INTO tblcontact (user_name, user_email,content) VALUES ('" . $name. "', '" . $email. "','" . $content. "')");
	$insert_id = mysqli_insert_id($conn);
	//if(!empty($insert_id)) {
	   $message = "Thông tin liên hệ của bạn đã gửi thành công.";
	   $type = "success";
	//}
}
require_once "contact-view.php";
?>