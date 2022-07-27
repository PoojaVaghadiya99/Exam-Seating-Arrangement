<%@ page import="java.sql.*" %>

<%

	String eid = request.getParameter("eid");
	String cid = request.getParameter("cid");
	
	
	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("delete from exam where eid=? and cid=?");
		pst.setString(1,eid);
		pst.setString(2,cid);
	
		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessDelete");
			dispatchar = request.getRequestDispatcher("exam.jsp");
		} else {
			request.setAttribute("status","FailedDelete");
			dispatchar = request.getRequestDispatcher("exam.jsp");
		}
		
		dispatchar.forward(request,response);
		
		
	} 
	catch(Exception e) 
	{
		
	}


%>