package com.seatingarrangement.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Registration")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String contact = request.getParameter("contact");

//		PrintWriter out = response.getWriter();
//		out.print("Name       -  " + name + "\n");	
//		out.print("Email      -  " + email + "\n");
//		out.print("Password   -  " + pass + "\n");
//		out.print("Contact No -  " + contact + "\n");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","Pooja!1299");
			PreparedStatement pst = con.prepareStatement("insert into users(uname,uemail,upassword,umobile) values(?,?,?,?)");
			pst.setString(1,name);
			pst.setString(2,email);
			pst.setString(3,pass);
			pst.setString(4,contact);
			
			int rowCount = pst.executeUpdate();
			if(rowCount > 0) {
				request.setAttribute("status","Success");
				dispatcher = request.getRequestDispatcher("registration.jsp");
			} else {
				request.setAttribute("status","Failed");
			}
			
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();		
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

}
