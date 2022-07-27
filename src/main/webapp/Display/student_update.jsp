<%@ page import="java.sql.*" %>

<%

	String prn = request.getParameter("prn");
	String name= request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String fid = request.getParameter("fid");
	String did = request.getParameter("did");
	String cid = request.getParameter("cid");
	String eid = request.getParameter("eid");
	
	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("update student set fid=?,did=?,eid=?,cid=?,name=?,email=?,phone=? where prn=?");
		
		pst.setString(1,fid);
		pst.setString(2,did);
		pst.setString(3,eid);
		pst.setString(4,cid);
		pst.setString(5,name);
		pst.setString(6,email);
		pst.setString(7,phone);
		pst.setString(8,prn);
		
	

		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessUpdate");
			dispatchar = request.getRequestDispatcher("student.jsp");
		} else {
			request.setAttribute("status","FailedUpdate");
			dispatchar = request.getRequestDispatcher("student.jsp");
		}
		
		dispatchar.forward(request,response);
		
	} 
	catch(Exception e) 
	{
		
	}


%>