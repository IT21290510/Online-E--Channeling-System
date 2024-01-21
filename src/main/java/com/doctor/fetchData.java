package com.doctor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/fetchData")
public class fetchData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			response.setContentType("text/html");
			con = connectDB.getConnection();
			stmt = con.createStatement();
			String sql = "select * from appointment";
			rs = stmt.executeQuery(sql);
			PrintWriter out=response.getWriter();
			out.println("<html><head>"
					+ "<title>View Appointments</title>\r\n"
					+ "\r\n"
					+ "	<style>\r\n"
					+ "\r\n"
					+ "	#delete {\r\n"
					+ "	  font-family: Arial, Helvetica, sans-serif;\r\n"
					+ "	  border-collapse: collapse;\r\n"
					+ "	  width: 100%;\r\n"
					+ "	}\r\n"
					+ "	#delete td, #doct th {\r\n"
					+ "	  border: 1px solid #ddd;\r\n"
					+ "	  padding: 8px;\r\n"
					+ "	}\r\n"
					+ "	#delete tr:nth-child(even){background-color: #f2f2f2;}\r\n"
					+ "	#delete tr:hover {background-color: #ddd;}\r\n"
					+ "	#delete th {\r\n"
					+ "	  padding-top: 12px;\r\n"
					+ "	  padding-bottom: 12px;\r\n"
					+ "	  text-align: left;\r\n"
					+ "	  background-color: #04AA6D;\r\n"
					+ "	  color: white;\r\n"
					+ "	}\r\n"
					+ "	</style>\r\n"
					+ "	<link rel=\"stylesheet\" href=\"Css&img/home.css\">\r\n"
					+ "	<link rel=\"stylesheet\" href=\"Css&img/Select SignIn.css\"></head><body>"
					+ "	   <table style=\"width: 100%; background-color: #B3BFBF; border-radius: 12px; padding: 35px;\" border=\"0\">\r\n"
					+ "        <tr>\r\n"
					+ "		\r\n"
					+ "            <th width=\"25%\">\r\n"
					+ "                <img src=\"Css&img/logo1.jpg\" width=\"250\" height=\"150\" >\r\n"
					+ "            </th>\r\n"
					+ "            <th>\r\n"
					+ "                <h1 align=\"center\" style=\"font-size: 50px;\">HEALTH CARE CENTER</h1>\r\n"
					+ "            </th>\r\n"
					+ "            <th width=\"25%\"><br>\r\n"
					+ "                <br><br>\r\n"
					+ "            </th>\r\n"
					+ "        </tr>\r\n"
					+ "    </table><br>\r\n"
					+ "    <br>    <table border=\"1\" style=\"width:100%\">\r\n"
					+ "        <tr>\r\n"
					+ "            <th align=\"left\">\r\n"
					+ "            <h1>Appointments</h1>\r\n"
				
					+ "            	<table border='1' id=\"delete\" style=\"width:50%\">"
					+ "<tr><td>AppointmentID</td><td>firstName</td><td>lastName</td><td>tel</td>  </tr>");
			while(rs.next()) {
				out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
			}
			out.println("</table><br><br><br><br><br><br>");
			out.println("</table>");
			out.println("<footer style=\"border-radius: 12px;\">\r\n"
					+ "        <table style=\"width: 100%; color: black;\" border=\"0\">\r\n"
					+ "            <tr align=\"left\">\r\n"
					+ "                <th width=\"50%\">\r\n"
					+ "                    <h3><a class=\"textDeco\" href=\"About page.html\">About Us :</a></h3>\r\n"
					+ "                </th>\r\n"
					+ "                <th width=\"50%\">\r\n"
					+ "                    <h3>Contact Us :</h3>\r\n"
					+ "                </th>\r\n"
					+ "            </tr>\r\n"
					+ "            <tr>\r\n"
					+ "                <th align=\"left\" width=\"50%\">\r\n"
					+ "                    It is our aim to make your visit with us a comfortable one.<br>\r\n"
					+ "                    We practice with transparency, this means no suprises.<br>\r\n"
					+ "                    Our doctors are locally trained, regulary educated,and are here<br>\r\n"
					+ "                    to help you make informed decisions about the care we can provide for you.<br>\r\n"
					+ "                    We are here to hold your hand and guide you through sometimes,<br>\r\n"
					+ "                    unfortunately, difficult senarios.<br>\r\n"
					+ "                    We are also here to provide some changing experiences that doctors can offer.<br>\r\n"
					+ "                    Just ask our team that we can achieve for you!.<br>\r\n"
					+ "                </th>\r\n"
					+ "                <th>\r\n"
					+ "                    <table border=\"0\" width=\"100%\">\r\n"
					+ "                        <tr align=\"left\">\r\n"
					+ "                            <th><img src=\"Css&img/phone.png\" style = \"width:10%; length:10%;\"></th>\r\n"
					+ "                            <th>Phone Number : 0771234567</th>\r\n"
					+ "                            <th><img src=\"Css&img/phone.png\" style = \"width:10%; length:10%;\"></th>\r\n"
					+ "                        </tr>\r\n"
					+ "                        <tr align=\"left\">\r\n"
					+ "                            <th><img src=\"Css&img/email.png\" style = \"width:10%; length:10%;\"></th>\r\n"
					+ "                            <th>Email : medical@gmail.com</th>\r\n"
					+ "                            <th><img src=\"Css&img/email.png\" style = \"width:10%; length:10%;\"></th>\r\n"
					+ "                        </tr>\r\n"
					+ "                        <tr align=\"left\">\r\n"
					+ "                            <th><img src=\"Css&img/address.png\" style = \"width:10%; length:10%;\"></th>\r\n"
					+ "                            <th>Address : malabe</th>\r\n"
					+ "                            <th><img src=\"Css&img/address.png\" style = \"width:10%; length:10%;\"></th>\r\n"
					+ "                        </tr>\r\n"
					+ "                    </table>\r\n"
					+ "                </th>\r\n"
					+ "            </tr>\r\n"
					+ "        </table>\r\n"
					+ "    </footer></body></html>");
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
