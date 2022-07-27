<%@ page import="java.sql.*" %>

<%

	String fid = request.getParameter("fid");
System.out.println(fid);
	String did = request.getParameter("did");
	String dname= request.getParameter("dname");
	RequestDispatcher dispatchar = null;
	
	try 
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("insert into department(fid,did,dname) values(?,?,?)");
		
		pst.setString(1,fid);
		pst.setString(2,did);
		pst.setString(3,dname);
		
		int count = -1;
		count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessAdd");
			dispatchar = request.getRequestDispatcher("department.jsp");
		} else {
			request.setAttribute("status","FailedAdd");
			dispatchar = request.getRequestDispatcher("department.jsp");
		}
		
		dispatchar.forward(request,response);
		
		
	} 
	catch(Exception e) 
	{
		request.setAttribute("status","FailedAdd");
		dispatchar = request.getRequestDispatcher("department.jsp");
		dispatchar.forward(request,response);
	}


%>