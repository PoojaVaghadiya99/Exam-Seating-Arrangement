<%@ page import="java.sql.*" %>

<%

	String fid = request.getParameter("fid");
	String did = request.getParameter("did");
	String cid = request.getParameter("cid");
	String eid = request.getParameter("eid");
	String sid = request.getParameter("sid");
	String sname = request.getParameter("sname");
	String sdate = request.getParameter("sdate");
	String stime = request.getParameter("stime");

	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("update subject set fid=?,did=?,cid=?,eid=?,sid=?,sname=?,sdate=?,stime=? where sid=?");
		
		pst.setString(1,fid);
		pst.setString(2,did);
		pst.setString(3,cid);
		pst.setString(4,eid);
		pst.setString(5,sid);
		pst.setString(6,sname);
		pst.setString(7,sdate);
		pst.setString(8,stime);
		pst.setString(9,sid);
		
	
		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessUpdate");
			dispatchar = request.getRequestDispatcher("subject.jsp");
		} else {
			request.setAttribute("status","FailedUpdate");
			dispatchar = request.getRequestDispatcher("subject.jsp");
		}
		
		dispatchar.forward(request,response);
		
	} 
	catch(Exception e) 
	{
		
	}


%>