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
 * Servlet implementation class AppoinmentSearchServerlet
 */
@WebServlet("/AppoinmentSearchServerlet")
public class AppoinmentSearchServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String docName = request.getParameter("doctor");
		String date = request.getParameter("date");
		
			try {
				//Get all channeling of the searched doc given date
				List<Appoinments> appDetails = AppoinmentDBUtil.getChannels(docName, date);
				request.setAttribute("appDetails", appDetails);
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("appoinment.jsp");
			dis.forward(request, response);
			
		
		
		
	}

}
