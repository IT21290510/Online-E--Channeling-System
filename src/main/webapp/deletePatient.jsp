<%@ page import="java.sql.*" %>

<%
   try {
      // Get the ID parameter from the request URL
      int id = Integer.parseInt(request.getParameter("id"));

      // Establish database connection
      Class.forName("com.mysql.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/channeling";
      String username = "root";
      String password = "it21817526";
      Connection conn = DriverManager.getConnection(url, username, password);

      // Delete the patient record with the given ID
      String sql = "DELETE FROM patient WHERE id=?";
      PreparedStatement stmt = conn.prepareStatement(sql);
      stmt.setInt(1, id);
      stmt.executeUpdate();

      // Close connections
      stmt.close();
      conn.close();

      // Redirect back to the main page after deletion
      response.sendRedirect("showpatientdetails.jsp");
   } catch (Exception e) {
      e.printStackTrace();
   }
%>
