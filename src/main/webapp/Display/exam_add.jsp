<%@ page import="java.sql.*" %>

<%

	String fid = request.getParameter("fid");
	String did = request.getParameter("did");
	String cid = request.getParameter("cid");
	String eid = request.getParameter("eid");
	String ename= request.getParameter("ename");
	
	RequestDispatcher dispatchar = null;
	
	try 
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("insert into exam(fid,did,cid,eid,ename) values(?,?,?,?,?)");
		
		pst.setString(1,fid);
		pst.setString(2,did);
		pst.setString(3,cid);
		pst.setString(4,eid);
		pst.setString(5,ename);
		
	
		int count = -1;
		count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessAdd");
			dispatchar = request.getRequestDispatcher("exam.jsp");
		} else {
			request.setAttribute("status","FailedAdd");
			dispatchar = request.getRequestDispatcher("exam.jsp");
		}
		
		dispatchar.forward(request,response);
		
		
	} 
	catch(Exception e) 
	{
		request.setAttribute("status","FailedAdd");
		dispatchar = request.getRequestDispatcher("exam.jsp");
		dispatchar.forward(request,response);
	}


%>