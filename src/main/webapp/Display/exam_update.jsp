<%@ page import="java.sql.*" %>

<%

	String fid = request.getParameter("fid");
	String did = request.getParameter("did");
	String cid = request.getParameter("cid");
	String eid = request.getParameter("eid");
	String ename = request.getParameter("ename");
	

	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("update exam set fid=?,did=?,cid=?,eid=?,ename=? where eid=? and cid=?");
		
		pst.setString(1,fid);
		pst.setString(2,did);
		pst.setString(3,cid);
		pst.setString(4,eid);
		pst.setString(5,ename);
		pst.setString(6,eid);
		pst.setString(7,cid);
		
	
		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessUpdate");
			dispatchar = request.getRequestDispatcher("exam.jsp");
		} else {
			request.setAttribute("status","FailedUpdate");
			dispatchar = request.getRequestDispatcher("exam.jsp");
		}
		
		dispatchar.forward(request,response);
		
	} 
	catch(Exception e) 
	{
		
	}


%>