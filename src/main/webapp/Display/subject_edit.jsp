<%@ page import="java.sql.*" %>

<%

	String sid = request.getParameter("sid");
	try 
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("select * from subject where sid = ?");
		pst.setString(1,sid);
	
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
%>	


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Edit Subject Details</title>

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
						<h2 class="form-title">Edit Subject Details</h2>
					
						<form method="post" action="subject_update.jsp" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="faculty"><i class=" zmdi zmdi-view-dashboard material-icons-name"></i></label>
								<input type="text" name="fid" id="fid"
									placeholder="Faculty ID"  value="<%= rs.getString("fid") %>"/>
							</div>
							<div class="form-group">
								<label for="department"><i class="zmdi zmdi-view-carousel l material-icons-name"></i></label>
								<input type="text" name="did" id="did"
									placeholder="Department ID"   value="<%= rs.getString("did") %>"/>
							</div>
							<div class="form-group">
								<label for="department"><i class="zmdi zmdi-file-plus l material-icons-name"></i></label>
								<input type="text" name="cid" id="cid"
									placeholder="Course ID"   value="<%= rs.getString("cid") %>"/>
							</div>
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-collection-text material-icons-name"></i></label> <input
									type="text" name="eid" id="eid" placeholder="Exam ID"   value="<%= rs.getString("eid") %>"/>
							</div>
							<div class="form-group">
								<label for="prn"><i
									class="zmdi zmdi-account zmdi-accounts-list-alt material-icons-name"></i></label> <input
									type="text" name="sidd" id="sidd" placeholder="Subject ID"   value="<%= rs.getString("sid") %>" disabled/>
								<input type="hidden" name="sid" id="sid" placeholder="Subject ID"   value="<%= rs.getString("sid") %>"/>
							</div>
							<div class="form-group">
								<label for="prn"><i
									class="zmdi zmdi-account zmdi-plus-square material-icons-name"></i></label> <input
									type="text" name="sname" id="sname" placeholder="Subject Name"   value="<%= rs.getString("sname") %>"/>
							</div>
							<div class="form-group">
								<label for="prn"><i
									class="zmdi zmdi-account zmdi-calendar-alt material-icons-name"></i></label> <input
									type="date" name="sdate" id="date" placeholder="PRN"   value="<%= rs.getString("sdate") %>"/>
							</div>
							<div class="form-group">
								<label for="prn"><i
									class="zmdi zmdi-account zmdi-alarm-check material-icons-name"></i></label> <input
									type="time" name="stime" id="time" placeholder="PRN"   value="<%= rs.getString("stime") %>"/>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="add" id="add"
									class="form-submit" value="Edit Subject" />
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