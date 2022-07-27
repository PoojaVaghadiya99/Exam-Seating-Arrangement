<%@ page import="java.sql.*" %>

<%

	String bid = request.getParameter("bid");

	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("delete from block where bid=?");
		pst.setString(1,bid);
	
		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessDelete");
			dispatchar = request.getRequestDispatcher("block.jsp");
		} else {
			request.setAttribute("status","FailedDelete");
			dispatchar = request.getRequestDispatcher("block.jsp");
		}
		
		dispatchar.forward(request,response);
		
	} 
	catch(Exception e) 
	{
		
	}


%>