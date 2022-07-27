<%@ page import="java.sql.*" %>

<%

	String fid = request.getParameter("fid");
	String did = request.getParameter("did");
	String eid = request.getParameter("eid");
	String cid = request.getParameter("cid");
	String prn = request.getParameter("prn");
	String name= request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	RequestDispatcher dispatchar = null;
	
	try 
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");
		
		PreparedStatement pst = con.prepareStatement("insert into student(fid,did,eid,cid,prn,name,email,phone) values(?,?,?,?,?,?,?,?)");
		
		pst.setString(1,fid);
		pst.setString(2,did);
		pst.setString(3,eid);
		pst.setString(4,cid);
		pst.setString(5,prn);
		pst.setString(6,name);
		pst.setString(7,email);
		pst.setString(8,phone);
		
		int count = -1;
		count = pst.executeUpdate();
	
		if(count > 0) {
			request.setAttribute("status","SuccessAdd");
			dispatchar = request.getRequestDispatcher("student.jsp");
		} else {
			request.setAttribute("status","FailedAdd");
			dispatchar = request.getRequestDispatcher("student.jsp");
		}
		
		dispatchar.forward(request,response);
		
		
	} 
	catch(Exception e) 
	{
		request.setAttribute("status","FailedAdd");
		dispatchar = request.getRequestDispatcher("student.jsp");
		dispatchar.forward(request,response);
	}


%>