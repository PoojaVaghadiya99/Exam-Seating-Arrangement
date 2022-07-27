<%@ page import="java.sql.*" %>

<%

	String fid = request.getParameter("fid");
	String did = request.getParameter("did");
	String bid = request.getParameter("bid");
	String bname = request.getParameter("bname");
	String bfloor = request.getParameter("bfloor");
	String btotalseat = request.getParameter("btotalseat");


	try 
	{
		RequestDispatcher dispatchar = null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("update block set fid=?,did=?,bid=?,bname=?,bfloor=?,btotalseat=? where bid=?");
		
		pst.setString(1,fid);
		pst.setString(2,did);
		pst.setString(3,bid);
		pst.setString(4,bname);
		pst.setString(5,bfloor);
		pst.setString(6,btotalseat);
		pst.setString(7,bid);
		
	

		int count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessUpdate");
			dispatchar = request.getRequestDispatcher("block.jsp");
		} else {
			request.setAttribute("status","FailedUpdate");
			dispatchar = request.getRequestDispatcher("block.jsp");
		}
		
		dispatchar.forward(request,response);
		
	} 
	catch(Exception e) 
	{
		
	}


%>