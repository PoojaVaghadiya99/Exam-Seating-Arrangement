<%@ page import="java.sql.*" %>
<% 
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");
	
	Statement statement1 = con.createStatement() ;
	ResultSet resultset1 = statement1.executeQuery("select * from faculty");
	
	Statement statement2 = con.createStatement() ;
	ResultSet resultset2 = statement2.executeQuery("select * from department");
	
	
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Add Block Details</title>

<!-- Font Icon -->
<link rel="stylesheet" href="../fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="../css/style.css">
<style>
.space{
	height:100px; 
}
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
						<h2 class="form-title">Block Details</h2>
					
						<form method="post" action="block_add.jsp" class="register-form"
							id="register-form">
							<!-- <div class="form-group">
								<label for="faculty"><i class="zmdi zmdi-view-dashboard material-icons-name"></i></label>
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
							<!-- <div class="form-group">
								<label for="department"><i class="zmdi zmdi-view-carousel material-icons-name"></i></label>
								<input type="text" name="did" id="did"
									placeholder="Department ID" />
							</div> -->
							<div class="form-group">
								<label for="department"><i class="zmdi zmdi-view-carousel l material-icons-name"></i></label>
								<select name="did">
									<option value=null>----- Select Department -----</option>
									<% while(resultset2.next()){ %>
									<option value="<%= resultset2.getString("did") %>"><%= resultset2.getString("dname") %></option>
			    					<% } %>
								</select>
							</div>
							<div class="form-group">
								<label for="prn"><i
									class="zmdi zmdi-view-stream material-icons-name"></i></label> <input
									type="text" name="bid" id="bid" placeholder="Block ID" />
							</div>
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-view-stream material-icons-name"></i></label> <input
									type="text" name="bname" id="bname" placeholder="Block Name" />
							</div>
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-view-stream material-icons-name"></i></label> <input
									type="text" name="bfloor" id="bfloor" placeholder="floor" />
							</div><div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-view-stream material-icons-name"></i></label> <input
									type="text" name="btotalseat" id="btotalseat" placeholder="Total Seat" />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="add" id="add"
									class="form-submit" value="Add Block" />
								<a href="block.jsp" class="btn form-submit" style="text-decoration:none;cursor:pointer;color:white;">Cancel</a>
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
	<link rel="stylesheet" href="../alert/dist/sweetalert.css">
	
	<script>
		var status = document.getElementById("status").value;
		if(status == "Success") {
			swal("Congrats","Block Added Successfully","success");
		}
	</script>



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>