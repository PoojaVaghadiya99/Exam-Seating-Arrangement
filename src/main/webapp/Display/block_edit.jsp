<%@ page import="java.sql.*" %>

<%

	String bid = request.getParameter("bid");
	try 
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("select * from block where bid = ?");
		pst.setString(1,bid);
	
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
%>	


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Edit Block Details</title>

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
						<h2 class="form-title">Edit Block Details</h2>
					
						<form method="post" action="block_update.jsp" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="faculty"><i class="zmdi zmdi-view-dashboard material-icons-name"></i></label>
								<input type="text" name="fid" id="fid" value="<%= rs.getString("fid") %>"
									placeholder="Faculty ID" />
							</div>
							<div class="form-group">
								<label for="department"><i class="zmdi zmdi-view-carousel material-icons-name"></i></label>
								<input type="text" name="did" id="did"
									placeholder="Department ID" value="<%= rs.getString("did") %>"/>
							</div>
							<div class="form-group">
								<label for="prn"><i
									class="zmdi zmdi-view-stream material-icons-name"></i></label> <input
									type="text" name="bidd" id="bidd" placeholder="Block No" value="<%= rs.getString("bid") %>" disabled/>
									<input
									type="hidden" name="bid" id="bid" placeholder="Block No" value="<%= rs.getString("bid") %>"/>
							</div>
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-view-stream material-icons-name"></i></label> <input
									type="text" name="bname" id="bname" placeholder="Block Name" value="<%= rs.getString("bname") %>"/>
							</div>
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-view-stream material-icons-name"></i></label> <input
									type="text" name="bfloor" id="bfloor" placeholder="Floor" value="<%= rs.getString("bfloor") %>"/>
							</div>
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-view-stream material-icons-name"></i></label> <input
									type="text" name="btotalseat" id="btotalseat" placeholder="Total Seat" value="<%= rs.getString("btotalseat") %>"/>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="add" id="add"
									class="form-submit" value="Edit Block" />
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
			swal("Congrats","Block Edited Successfully","success");
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