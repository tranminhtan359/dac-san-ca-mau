<?php

include 'configconment.php';

error_reporting(0); // For not showing any error

if (isset($_POST['submit'])) { // Check press or not Post Comment Button
	$name = $_POST['name']; // Get Name from form
	$email = $_POST['email']; // Get Email from form
	$comment = $_POST['comment']; // Get Comment from form

	$sql = "INSERT INTO comments (name, email, comment)
			VALUES ('$name', '$email', '$comment')";
	$result = mysqli_query($conn, $sql);
	if ($result) {
		echo "<script>alert('Comment added successfully.')</script>";
	} else {
		echo "<script>alert('Comment does not add.')</script>";
	}
}

?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="css/conments.css" />

	<title>Comment System in PHP - Pure Coding</title>
</head>

<body>
	<div class="wrapper">
		<form action="" method="POST" class="form">
			<div class="row">
				<div class="input-group">
					<label for="name">Họ Tên</label>
					<input type="text" name="name" id="name" placeholder="Nhập họ tên" required>
				</div>
			</div>
			<div class="row">
				<div class="input-group">
					<label for="email">Email</label>
					<input type="email" name="email" id="email" placeholder="Nhập Email" required>
				</div>
			</div>
			<div class="input-group textarea">
				<textarea id="comment" name="comment" placeholder="Nhập bình luận" required=""></textarea>
			</div>
			<div class="input-group">
				<button name="submit" class="btn">Gửi</button>
			</div>
		</form>

	</div>
</body>

</html>