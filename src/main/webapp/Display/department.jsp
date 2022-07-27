<%@ page import="java.sql.*" %>
<% 
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");
	Statement statement = con.createStatement() ;
	ResultSet resultset = statement.executeQuery("select * from department") ;
%>

<HTML>
       <HEAD>
	       <TITLE>Department</TITLE>
	       
	       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
			
			<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
       
       		<style>
       			.datatable{
       				margin:0px;
       			}
       			
       			.datatable h1 {
						margin:30px;
						text-align:center;
       			}
       		
       		</style>
       		
       </HEAD>
       <BODY>
       		<jsp:include page="../Header.jsp"></jsp:include>
		<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
			<div class="datatable">
       			<H1 class="text-uppercase">Department Details</H1>
				<a href="department_add_details.jsp" class="btn btn-info btn-lg btn-block" >Add Department</a><br/>
				<table class="table table-hover">
		  			<thead class="thead-dark">
					    <tr>
					      <th scope="col"></th>
					      <th scope="col"></th>
					      <th scope="col">Faculty ID</th>
					      <th scope="col">Department ID</th>
					      <th scope="col">Department Name</th>
					      <th scope="col">Action</th>
					    </tr>
		  			</thead>
		  			<tbody>
						<% while(resultset.next()){ %>
					      	<TR>
					       		<TD></td>
					       		<TD></td>
					      		<TD> <%= resultset.getString(1) %></td>
					      		<TD> <%= resultset.getString(2) %></TD>
					      		<TD> <%= resultset.getString(3) %></TD>
					      		<td>
					      			<a href="department_edit.jsp?did=<%= resultset.getString("did") %>" type="button" class="btn btn-success">Edit</a>
					      			&nbsp; | &nbsp; 
					      			<a href="department_delete.jsp?did=<%= resultset.getString("did") %>" type="button" class="btn btn-danger">Delete</a>
					      		</td>
				        	</TR>
			     		<% } %>
		  			</tbody>
				</table>
			</div>
			<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
			<link rel="stylesheet" href="../alert/dist/sweetalert.css">
	
			<script>
				var status = document.getElementById("status").value;
				if(status == "SuccessAdd") {
					swal("Congrats","Department Added Successfully","success");
				} 
				if(status == "SuccessUpdate") {
					swal("Congrats","Department Edited Successfully","success");
				} 
				if(status == "SuccessDelete") {
					swal("Congrats","Department Deleted Successfully","success");
				} 
				
				if(status == "FailedAdd") {
					swal("Oops !","Enter Unique Department ID!","error");
				} 
				if(status == "FailedUpdate" || status == "FailedDelete") {
					swal("Oops !","Something went wrong!","error");
				} 
				
			</script>
			
     </BODY>
</HTML>