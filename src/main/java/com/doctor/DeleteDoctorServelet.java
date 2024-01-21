package com.doctor;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteDoctorServelet")
public class DeleteDoctorServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("docid");
		boolean isTrue;
		
		isTrue = doctorDBUtil.deleteDoctor(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("doctorSignup.jsp");
			dispatcher.forward(request, response);
		}else {
			List<doctor> docDetails =doctorDBUtil.getDoctorDetails(id);
			request.setAttribute("docDetails", docDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("doctorAccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}





