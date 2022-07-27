<%@ page import="java.sql.*" %>

<%

	String cid = request.getParameter("cid");
	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("delete from course where cid=?");
		pst.setString(1,cid);
	
		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessDelete");
			dispatchar = request.getRequestDispatcher("course.jsp");
		} else {
			request.setAttribute("status","FailedDelete");
			dispatchar = request.getRequestDispatcher("course.jsp");
		}
		
		dispatchar.forward(request,response);
		
	} 
	catch(Exception e) 
	{
		
	}


%>