<%@ page import="java.sql.*" %>
<% 
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");
	
	Statement statement1 = con.createStatement() ;
	ResultSet resultset1 = statement1.executeQuery("select * from faculty");
	
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Add Department Details</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="../fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="../css/style.css">
<style>
select {
	width: 100%;
    display: block;
    border: none;
    border-bottom: 1px solid #999;
    padding: 6px 30px;
    font-family: Poppins;
    box-sizing: border-box;
}

select option {
	width: 100%;
    padding: 6px 30px;
 }
</style>
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Add Department Details</h2>
					
						<form method="post" action="department_add.jsp" class="register-form"
							id="register-form">
							<!-- <div class="form-group">
								<label for="faculty"><i class=" zmdi zmdi-view-dashboard material-icons-name"></i></label>
								<input type="text" name="fid" id="fid"
									placeholder="Faculty ID" />
							</div> -->
							<div class="form-group">
							<label for="faculty"><i class=" zmdi zmdi-view-dashboard material-icons-name"></i></label>
								<select name="fid">
									<option value=null>----- Select Faculty -----</option>
									<% while(resultset1.next()){ %>
									<option value="<%= resultset1.getString("fid") %>"><%= resultset1.getString("fname") %></option>
			    					<% } %>
								</select>
							</div>
							<div class="form-group">
								<label for="department"><i class="zmdi zmdi-view-carousel l material-icons-name"></i></label>
								<input type="text" name="did" id="did"
									placeholder="Department ID" />
							</div>
							<div class="form-group">
								<label for="department"><i class="zmdi zmdi-view-carousel l material-icons-name"></i></label>
								<input type="text" name="dname" id="dname"
									placeholder="Department Name" />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="add" id="add"
									class="form-submit" value="Add Dept" />
								<a href="department.jsp" class="btn form-submit" style="text-decoration:none;cursor:pointer;color:white;">Cancel</a>	
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="../images/signup-image.jpg" alt="sing up image">
						</figure>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script>
		var status = document.getElementById("status").value;
		if(status == "Success") {
			swal("Congrats","Department Added Successfully","success");
		}
	</script>



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>