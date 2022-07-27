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
	
	
	
	RequestDispatcher dispatchar = null;
	
	try 
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");
		
		PreparedStatement pst = con.prepareStatement("insert into subject(fid,did,cid,eid,sid,sname,sdate,stime) values(?,?,?,?,?,?,?,?)");
		
		pst.setString(1,fid);
		pst.setString(2,did);
		pst.setString(3,cid);
		pst.setString(4,eid);
		pst.setString(5,sid);
		pst.setString(6,sname);
		pst.setString(7,sdate);
		pst.setString(8,stime);
		
		int count = -1;
		count = pst.executeUpdate();
	
		if(count > 0) {
			request.setAttribute("status","SuccessAdd");
			dispatchar = request.getRequestDispatcher("subject.jsp");
		} else {
			request.setAttribute("status","FailedAdd");
			dispatchar = request.getRequestDispatcher("subject.jsp");
		}
		
		dispatchar.forward(request,response);
		
		
	} 
	catch(Exception e) 
	{
		request.setAttribute("status","FailedAdd");
		dispatchar = request.getRequestDispatcher("subject.jsp");
		dispatchar.forward(request,response);
	}


%>