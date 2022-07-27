package com.seatingarrangement.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Faculty")
public class FacultyDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String fid = request.getParameter("fid");
		

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Pooja!1299");
			PreparedStatement pst = con.prepareStatement("select * from faculty where fid=?");
			pst.setString(1,fid);
			
			ResultSet rs = pst.executeQuery();
			PrintWriter out = response.getWriter();
				
				out.write("<HTML>"
						+ "		<HEAD>"
						+ "	       <TITLE>Faculty</TITLE>"
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
						+ "       			<H1>Faculty Details</H1>"
						+ "				<table class=\"table table-hover\">"
						+ "		  			<thead class=\"thead-dark\">"
						+ "					    <tr>"
						+ "					      <th scope=\"col\"></th>"
						+ "					      <th scope=\"col\"></th>"
						+ "					      <th scope=\"col\">Faculty ID</th>"
						+ "					      <th scope=\"col\">Faculty Name</th>"
						+ "					    </tr>"
						+ "		  			</thead>"
						+ "		  			<tbody>");
						 						while(rs.next()){ 
						 						out.write( "<TR><td>");
						 						out.write( "</td><TD>");
 												out.write( "</td><TD>");
						 						out.write(rs.getString(1));
						 						out.write( "</td><TD>");
						 						out.write(rs.getString(2));
						 						out.write( "</TD></TR>");
						out.write( "		  			</tbody>"
						+ "				</table>"
						+ "			</div>"
						+ "     </BODY>"
						+ "</HTML>");	
				
						 						}
		} catch(Exception e) {
			e.printStackTrace();
		}
			
		
	}

}
