<%@ page import="java.sql.*" %>

<%

	String fid = request.getParameter("fid");
	try 
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("select * from faculty where fid = ?");
		pst.setString(1,fid);
	
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
%>	


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Edit Faculty Details</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="../fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="../css/style.css">
</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Edit Faculty Details</h2>
					
						<form method="post" action="faculty_update.jsp" class="register-form"
							id="register-form">
							
							<div class="form-group">
								<label for="faculty"><i class=" zmdi zmdi-view-dashboard material-icons-name"></i></label>
								<input type="text" name="fidd" id="fidd"
									placeholder="Faculty ID" value="<%= rs.getString("fid") %>" disabled/>
								<input type="hidden" name="fid" id="fid" value="<%= rs.getString("fid") %>" />
							</div>
							<div class="form-group">
								<label for="faculty"><i class=" zmdi zmdi-view-dashboard material-icons-name"></i></label>
								<input type="text" name="fname" id="fname"
									placeholder="Faculty Name" value="<%= rs.getString("fname") %>" />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="add" id="add"
									class="form-submit" value="Edit Faculty" />
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
	

</body>
</html>

<%
		}
	} 
	catch(Exception e) 
	{
		
	}


%>