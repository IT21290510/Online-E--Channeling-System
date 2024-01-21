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
 * Servlet implementation class ChannelingUpdateServlet
 */
@WebServlet("/ChannelingUpdateServlet")
public class ChannelingUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		boolean isTrue;
		
		String id = request.getParameter("id");
		String date = request.getParameter("date");	
		//Update the channels table with dates
		isTrue = AppoinmentDBUtil.updateChannels(id, date);
		
		if(isTrue == true) {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Successfully Update Date');");
			out.println("location = 'updateChannelingInfo.jsp'");
			out.println("</script>");
//			RequestDispatcher dis = request.getRequestDispatcher("updateChannelingInfo.jsp");
//			dis.forward(request, response);
		}
		else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Unsuccess');");
			out.println("location = 'updateChannelingInfo.jsp'");
			out.println("</script>");
//			RequestDispatcher dis1 = request.getRequestDispatcher("updateChannelingInfo.jsp");
//			dis1.forward(request, response);
		}	
	}

}
