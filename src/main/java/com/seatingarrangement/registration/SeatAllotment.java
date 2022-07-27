package com.seatingarrangement.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SeatAllotment")
public class SeatAllotment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	PrintWriter out;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		out = response.getWriter();
		String eid = request.getParameter("eid");
		String cid = request.getParameter("cid");
		int seatno = Integer.parseInt(request.getParameter("sstart"));
		
		HttpSession session = request.getSession();	
		RequestDispatcher dispatchar = null;

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");
			Statement statement = con.createStatement() ;

			PreparedStatement pst1 = con.prepareStatement("select * from student where eid = ? and cid = ?");
			pst1.setString(1,eid);
			pst1.setString(2,cid);
			
			ResultSet rs1 = pst1.executeQuery();
		
			ResultSet rs2 = statement.executeQuery("select * from block");
			
			System.out.println("data "+rs1.getRow()); 
			System.out.println(seatno); 
			
			PrintWriter out = response.getWriter();
			
			if (!rs1.next()) {    

				 
				out.write("<HTML>"
						+ "		<HEAD>"
						+ "	       <TITLE>Seat Allotment</TITLE>"
						+ "	       <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">"
						+ "			<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>"
						+ "			<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>"
						+ "			<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>"
						+ "<style>#f {padding-top: 1rem;padding-bottom: 1rem;font-family: \"Montserrat\", -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\";font-weight: 400;"
						    
						+"</style>"
						+ " </HEAD>"
						+ "       <BODY>"
						+"          <font size='50' id=\"f\" style=\"margin:500px;padding:400px;\"><center>Seat Already Assigned</center></font><center><a style=\"height:60px;padding:20px;\" href=\"Arrangement/seat_assign.jsp\" class=\"btn btn-info\">Back to Seat Allotment</a></center>"
						+ "		  </BODY>"
						+ "</HTML");
			} else {
				
			
  
			    
			
			
			out.write("<HTML>"
					+ "		<HEAD>"
					+ "	       <TITLE>Seat Allotment</TITLE>"
					+ "	       <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">"
					+ "			<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>"
					+ "			<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>"
					+ "			<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>"
					+ "       	<style>"
					+ "       			.datatable{ margin:80px;}"
					+ "       			.datatable h1 {margin:30px;text-align:center;}"
					+ "       	</style>"
					+ "       </HEAD>"
					+ "       <BODY>"
					+ "			<div class=\"datatable\">"
					+ "       			<H1>Seat Allotment</H1>"
					+ "				<table class=\"table table-hover\">"
					+ "		  			<thead class=\"thead-dark\">"
					+ "					    <tr>"
					+ "					      <th scope=\"col\">PRN</th>"
					+ "					      <th scope=\"col\">Name</th>"
					+ "					      <th scope=\"col\">Seat No</th>"
					+ "					      <th scope=\"col\">Block Name (ID)</th>"
					+ "					      <th scope=\"col\">Block Floor</th>"
					+ "					    </tr>"
					+ "		  			</thead>"
					+ "		  			<tbody>");


			
				
				int flag =1;
				 while(rs1.next())
				 {
					 if(flag == 1) 
					 {
						 while(rs2.next())
						 {
							 int Tseat = rs2.getInt("btotalseat");
							 if(flag == 1) 
							 {
								 for(int i=1;i<=Tseat;i++)
								 {
									PreparedStatement pst = con.prepareStatement("insert into seatallocate(fid,did,eid,cid,prn,bid,seatno) values(?,?,?,?,?,?,?)");
										
				
									pst.setString(1,rs1.getString("fid"));
									pst.setString(2,rs1.getString("did"));
									pst.setString(3,rs1.getString("eid"));
									pst.setString(4,rs1.getString("cid"));
									pst.setString(5,rs1.getString("prn"));
									pst.setString(6,rs2.getString("bid"));
									pst.setInt(7,seatno);
									
									pst.executeUpdate();
									
					 				out.write( "<TR><td>");
					 				out.write(rs1.getString("prn"));
					 				out.write( "</td><TD>");
					 				out.write(rs1.getString("name"));
									out.write( "</td><TD>");
					 				out.write(seatno + " ");
					 				out.write( "</td><TD>");
					 				out.write(rs2.getString("bname") + "( " + rs2.getString("bid") + " )");
					 				out.write( "</td><TD>");
					 				out.write(rs2.getString("bfloor"));
					 				out.write( "</TD></TR>");
					 				
					 				// System.out.println(rs1.getString("prn") + " - " + rs1.getString("name") + " - " + seatno + " - " + rs2.getString("bname") + " - " + rs2.getString("bfloor"));
									 seatno++;
									 if(!rs1.next()) 
									 {
										 flag = 0;
										 break;
									 }
								 } 
							 }
						 }
					 }	
					 else 
					 {
						 break;
					 }
				 }
				 
				 out.write( "</TD></TR>"
							+ "		  			</tbody>"
							+ "				</table>"
							+ "			</div>"
							+ "     </BODY>"
							+ "</HTML>");	
			
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
