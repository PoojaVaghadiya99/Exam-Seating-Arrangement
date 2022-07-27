<%@ page import="java.sql.*" %>

<%

	String prn = request.getParameter("prn");
	try 
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("select * from student where prn = ?");
		pst.setString(1,prn);
	
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
%>	


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Edit Student Details</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="../fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="../css/style.css">
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Edit Student Details</h2>
					
						<form method="post" action="student_update.jsp" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="prn"><i
									class="zmdi zmdi-account zmdi-accounts-list-alt material-icons-name"></i></label> <input
									type="text" name="prnno" id="PRNno" placeholder="PRN" value="<%= rs.getString("prn") %>" disabled/>
									<input type="hidden" name="prn" id="PRN" placeholder="PRN" value="<%= rs.getString("prn") %>"/>
							</div>
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Student Name" value="<%= rs.getString("name") %>" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email material-icons-name"></i></label> <input
									type="email" name="email" id="email" placeholder="Student Email" value="<%= rs.getString("email") %>" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-phone material-icons-name"></i></label>
								<input type="text" name="phone" id="phone"
									 placeholder="Contact Number" value="<%= rs.getString("phone") %>" />
							</div>
							<div class="form-group">
								<label for="faculty"><i class=" zmdi zmdi-view-dashboard material-icons-name"></i></label>
								<input type="text" name="fid" id="fid"
									placeholder="Faculty ID" value="<%= rs.getString("fid") %>" />
							</div>
							<div class="form-group">
								<label for="department"><i class="zmdi zmdi-view-carousel material-icons-name"></i></label>
								<input type="text" name="did" id="did"
									placeholder="Department ID" value="<%= rs.getString("did") %>" />
							</div>
							<div class="form-group">
								<label for="class"><i class="zmdi zmdi-file-plus material-icons-name"></i></label>
								<input type="text" name="cid" id="cid"
									placeholder="Course ID" value="<%= rs.getString("cid") %>" />
							</div>
							<div class="form-group">
								<label for="class"><i class="zmdi zmdi-collection-text material-icons-name"></i></label>
								<input type="text" name="eid" id="eid"
									placeholder="Exam ID" value="<%= rs.getString("eid") %>" />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="add" id="add"
									class="form-submit" value="Edit Student" />
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
			swal("Congrats","Student Added Successfully","success");
		}
	</script>



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>

<%
		}
	} 
	catch(Exception e) 
	{
		
	}


%>