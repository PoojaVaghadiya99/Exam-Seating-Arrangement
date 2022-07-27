<%@ page import="java.sql.*" %>

<%

	String sid = request.getParameter("sid");
	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("delete from subject where sid=?");
		pst.setString(1,sid);
	
		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessDelete");
			dispatchar = request.getRequestDispatcher("subject.jsp");
		} else {
			request.setAttribute("status","FailedDelete");
			dispatchar = request.getRequestDispatcher("subject.jsp");
		}
		
		dispatchar.forward(request,response);

		
	} 
	catch(Exception e) 
	{
		
	}


%>