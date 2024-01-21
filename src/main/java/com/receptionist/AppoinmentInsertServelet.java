package com.receptionist;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AppoinmentInsertServelet
 */
@WebServlet("/AppoinmentInsertServelet")
public class AppoinmentInsertServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String docname = request.getParameter("docname");
		String date = request.getParameter("date");	
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		boolean isTrue, isTrueDelete;
		//Calling insert and delete both for insert to appointment and delete from channeling
		isTrue = AppoinmentDBUtil.insertAppoinments(fname, lname, docname, date, phone, email);
		isTrueDelete = AppoinmentDBUtil.deleteChannel(id);
		if(isTrue == true && isTrueDelete == true) {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Successfully Created Appoinment' );");
			out.println("location = 'updateChanneling.jsp'");
			out.println("</script>");
//			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
//			dis.forward(request, response);
		}
		else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Appoinment Creation Failed' );");
			out.println("location = 'updateChanneling.jsp'");
			out.println("</script>");
//			RequestDispatcher dis1 = request.getRequestDispatcher("unsuccess.jsp");
//			dis1.forward(request, response);
		}	
	}

}
