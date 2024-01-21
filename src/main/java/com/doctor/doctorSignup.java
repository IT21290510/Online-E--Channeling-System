package com.doctor;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/doctorSignup")
public class doctorSignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("First_Name");
		String lname = request.getParameter("Last_Name");
		String specialization = request.getParameter("Specialization");
		String address = request.getParameter("Address");
		String email = request.getParameter("Email");
		String phone = request.getParameter("Phone");
		String gender = request.getParameter("Gender");
		String username = request.getParameter("user_name");
		String password = request.getParameter("Pwd");
		
		boolean isTrue;
		
		isTrue = doctorDBUtil.insertDoctor(fname, lname, specialization, address, email, phone, gender, username, password);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("dlogin.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("doctorSignup.jsp");
			dis2.forward(request, response);
		}
	}

}


