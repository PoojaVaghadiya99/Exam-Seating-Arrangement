<%@ page import="java.sql.*" %>

<%

	String did = request.getParameter("did");
	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("delete from department where did=?");
		pst.setString(1,did);
	
		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessDelete");
			dispatchar = request.getRequestDispatcher("department.jsp");
		} else {
			request.setAttribute("status","FailedDelete");
			dispatchar = request.getRequestDispatcher("department.jsp");
		}
		
		dispatchar.forward(request,response);
		
	} 
	catch(Exception e) 
	{
		
	}


%>