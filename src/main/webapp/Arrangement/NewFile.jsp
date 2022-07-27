<%@ page import="java.sql.*"%>
<% 
	String prn = request.getParameter("prn");
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");
	Statement statement = con.createStatement() ;

	PreparedStatement pst1 = con.prepareStatement("select * from seatallocate where prn = ?");
	pst1.setString(1,prn);
	ResultSet rs1 = pst1.executeQuery();
	

	
	
%>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.js"
	integrity="sha512-vNrhFyg0jANLJzCuvgtlfTuPR21gf5Uq1uuSs/EcBfVOz6oAHmjqfyPoB5rc9iWGSnVE41iuQU4jmpXMyhBrsw=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!------ Include the above in your HEAD tag ---------->
<style>
body {
	background: grey;
	margin-top: 120px;
	margin-bottom: 120px;
}
</style>
</head>
<body>



	<% while(rs1.next()){ 
						

					 		PreparedStatement pst2 = con.prepareStatement("select * from faculty where fid = ?");
							pst2.setString(1,rs1.getString(1));
							ResultSet rs2 = pst2.executeQuery();
							
							PreparedStatement pst3 = con.prepareStatement("select * from department where did = ?");
							pst3.setString(1,rs1.getString(2));
							ResultSet rs3 = pst3.executeQuery();

							PreparedStatement pst4 = con.prepareStatement("select DISTINCT eid,ename from exam where eid = ?");
							pst4.setString(1,rs1.getString(3));
							ResultSet rs4 = pst4.executeQuery();
							
							PreparedStatement pst5 = con.prepareStatement("select * from course where cid = ?");
							pst5.setString(1,rs1.getString(4));
							ResultSet rs5 = pst5.executeQuery();
							
							PreparedStatement pst6 = con.prepareStatement("select * from student where prn = ?");
							pst6.setString(1,prn);
							ResultSet rs6 = pst6.executeQuery();
							
							PreparedStatement pst7 = con.prepareStatement("select * from block where bid = ?");
							pst7.setString(1,rs1.getString(6));
							ResultSet rs7 = pst7.executeQuery();
							
							PreparedStatement pst8 = con.prepareStatement("select * from subject where cid = ?");
							pst8.setString(1,rs1.getString(4));
							ResultSet rs8 = pst8.executeQuery();
							
						%>
	<section id="invoice">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body p-0">
							<div class="row p-5">
								<div class="col-md-6">
									<img height="150" width="150" src="logo.png">
								</div>



								<div class="col-md-6 text-right">
									<br>
									<br>
									<br>
									<br>
									<h4 class="font-weight-bold mb-1">
										<% while(rs2.next()) { %>
										<%= rs2.getString("fname") %>
										<% } %><br>
									</h4>
									<p class="text-muted">
										<% while(rs3.next()) { %>
										<%= rs3.getString("dname") %>
										<% } %><br>
									</p>
								</div>

							</div>

							<hr>

							<div class="row pb-5 p-5">
								<div class="col-md-8">
									<p class="font-weight-bold mb-4">Exam Information</p>
									<p class="mb-1">
										<b>Exam Name - </b>
										<% while(rs4.next()) { %>
										<%= rs4.getString("ename") %>
										<% } %>
									</p>
									<p class="mb-1">
										<b>Course Name - </b>
										<% while(rs5.next()) { %>
										<%= rs5.getString("cname") %>
										<% } %>
									</p>
									<p class="mb-1">
										<b>Block Name (ID) - </b>
										<% while(rs7.next()) { %>
										<%= rs7.getString("bname") %>
										<% } %>(<%= rs1.getString(6) %>)
									</p>
									<p class="mb-1">
										<b>Seat No - </b><%= rs1.getInt(7) %></p>
								</div>

								<div class="col-md-4 text-left">
									<% while(rs6.next()) { %>
									<p class="font-weight-bold mb-4">Payment Details</p>
									<p class="mb-1">
										<span class="text-muted"><b>PRN - </b></span>
										<%= rs6.getString("prn") %></p>
									<p class="mb-1">
										<span class="text-muted"><b>Name - </b></span>
										<%= rs6.getString("name") %></p>
									<p class="mb-1">
										<span class="text-muted"><b>Email - </b></span>
										<%= rs6.getString("email") %></p>
									<p class="mb-1">
										<span class="text-muted"><b>Phone No - </b></span>
										<%= rs6.getString("phone") %>
									</p>
									<% } %>
								</div>
							</div>

							<div class="row p-5">
								<div class="col-md-12">
									<table class="table">
										<thead>
											<tr>
												<th class="border-0 text-uppercase small font-weight-bold">ID</th>
												<th class="border-0 text-uppercase small font-weight-bold">Subject</th>
												<th class="border-0 text-uppercase small font-weight-bold">Date</th>
												<th class="border-0 text-uppercase small font-weight-bold">Time</th>
											</tr>
										</thead>
										<tbody>
											<% while(rs8.next()) { %>
											<tr>
												<td><%= rs8.getString("sid") %></td>
												<td><%= rs8.getString("sname") %></td>
												<td><%= rs8.getString("sdate") %></td>
												<td><%= rs8.getString("stime") %></td>
											</tr>
											<% } %>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>

	<% } %>

	

</body>
</html>



