<%@ page import="java.sql.*" %>

<%

	String fid = request.getParameter("fid");
	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("delete from faculty where fid=?");
		pst.setString(1,fid);
	
		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessDelete");
			dispatchar = request.getRequestDispatcher("faculty.jsp");
		} else {
			request.setAttribute("status","FailedDelete");
			dispatchar = request.getRequestDispatcher("faculty.jsp");
		}
		
		dispatchar.forward(request,response);
		
	} 
	catch(Exception e) 
	{
		
	}


%>