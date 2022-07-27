<%@ page import="java.sql.*" %>

<%

	String fid = request.getParameter("fid");
	String fname= request.getParameter("fname");
	
	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("update faculty set fid=?,fname=? where fid=?");
		
		pst.setString(1,fid);
		pst.setString(2,fname);
		pst.setString(3,fid);
		
	
		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessUpdate");
			dispatchar = request.getRequestDispatcher("faculty.jsp");
		} else {
			request.setAttribute("status","FailedUpdate");
			dispatchar = request.getRequestDispatcher("faculty.jsp");
		}
		
		dispatchar.forward(request,response);
		
		
	} 
	catch(Exception e) 
	{
		
	}


%>