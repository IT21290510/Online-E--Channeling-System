package com.doctor;

import java.io.IOException;

import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateDocServelet")
public class updateDocServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id= request.getParameter("docid");
		String fname= request.getParameter("fname");
		String lname= request.getParameter("lname");
		String specialization= request.getParameter("spec");
		String address= request.getParameter("address");
		String email= request.getParameter("email");
		String contact= request.getParameter("phone");
		String gender= request.getParameter("gender");
		String username= request.getParameter("uname");
		String password= request.getParameter("Pwd");		
		
		boolean isTrue;
		isTrue = doctorDBUtil.updateDoc(id, fname, lname, specialization, address, email, contact, gender, username, password);
		
		if(isTrue == true) {
			List<doctor> docdetails = doctorDBUtil.getDoctorDetails(id);
			request.setAttribute("docDetails", docdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("doctorAccount.jsp");
			dis.forward(request, response);
			
		
		}else {
			List<doctor> docdetails = doctorDBUtil.getDoctorDetails(id);
			request.setAttribute("docDetails", docdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("doctorAccount.jsp");
			dis.forward(request, response);
//			alert("Update data is unsuccessful");
		}
	}



}


