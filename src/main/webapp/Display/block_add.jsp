<%@ page import="java.sql.*" %>

<%

	String fid = request.getParameter("fid");
	String did = request.getParameter("did");
	String bid= request.getParameter("bid");
	String bname= request.getParameter("bname");
	String bfloor= request.getParameter("bfloor");
	String btotalseat= request.getParameter("btotalseat");
	
	RequestDispatcher dispatchar = null;
	
	try 
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");

		PreparedStatement pst = con.prepareStatement("insert into block(fid,did,bid,bname,bfloor,btotalseat) values(?,?,?,?,?,?)");
		
		pst.setString(1,fid);
		pst.setString(2,did);
		pst.setString(3,bid);
		pst.setString(4,bname);
		pst.setString(5,bfloor);
		pst.setString(6,btotalseat);
		
		int count = -1;
		count = pst.executeUpdate();

		if(count > 0) {
			request.setAttribute("status","SuccessAdd");
			dispatchar = request.getRequestDispatcher("block.jsp");
		} else {
			request.setAttribute("status","FailedAdd");
			dispatchar = request.getRequestDispatcher("block.jsp");
		}
		
		dispatchar.forward(request,response);
		
		
	} 
	catch(Exception e) 
	{
		request.setAttribute("status","FailedAdd");
		dispatchar = request.getRequestDispatcher("block.jsp");
		dispatchar.forward(request,response);
	}


%>