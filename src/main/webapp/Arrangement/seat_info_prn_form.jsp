<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Find Exam Seat</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="../fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="../css/style.css">
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="../images/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="../login.jsp" class="signup-image-link">Admin Login</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Seat Arrangement</h2>
						<form method="post" action="NewFile.jsp" target="_blank" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="prn" id="prn"
									placeholder="Enter PRN" />
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="search" id="search"
									class="form-submit" value="Search" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="../js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="../alert/dist/sweetalert.css">
	
	<script>
		var status = document.getElementById("status").value;
		if(status == "Failed") {
			swal("Sorry","Wrong PRN Number","error");
		} 
	</script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>