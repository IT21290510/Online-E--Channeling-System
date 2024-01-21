package com.receptionist;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class RLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		boolean isTrue;
		
		isTrue = AppoinmentDBUtil.validateLogin(username, password);
		
		if(isTrue == true) {
		
			try {
				
				List<Receptionist> ptntDetails = AppoinmentDBUtil.getUsers(username);
				request.setAttribute("ptntDetails", ptntDetails);
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("appoinment.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location = 'Rlogin.jsp'");
			out.println("</script>");
		}
		
		
		/*
		try {
			
			List<Patient> ptntDetails = PatientDBUtil.getPatient(username);
			request.setAttribute("ptntDetails", ptntDetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("patientaccount.jsp");
		dis.forward(request, response);

		*/
	}

}
