<%@ page import="java.sql.*" %>

<%

	String fid = request.getParameter("fid");
	String did = request.getParameter("did");
	String dname = request.getParameter("dname");

	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("update department set fid=?,did=?,dname=? where did=?");
		
		pst.setString(1,fid);
		pst.setString(2,did);
		pst.setString(3,dname);
		pst.setString(4,did);
		
		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessUpdate");
			dispatchar = request.getRequestDispatcher("department.jsp");
		} else {
			request.setAttribute("status","FailedUpdate");
			dispatchar = request.getRequestDispatcher("department.jsp");
		}
		
		dispatchar.forward(request,response);
		
	} 
	catch(Exception e) 
	{
		
	}


%>