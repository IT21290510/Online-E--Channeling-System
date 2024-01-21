
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Update account</title>

	<link rel="stylesheet" href="Css&img/home.css">
	<link rel="stylesheet" href="Css&img/Select SignIn.css">
	
	<style>
		#table {
	  font-family: Arial, Helvetica, sans-serif;
	  border-collapse: collapse;
	  width: 100%;
	}
	#table td, #doct th {
	  border: 1px solid #ddd;
	  padding: 8px;
	}
	#table tr:nth-child(even){background-color: #f2f2f2;}
	#table tr:hover {background-color: #ddd;}
	#table th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  text-align: left;
	  background-color: #04AA6D;
	  color: white;
	}
	</style>

</head>
<body>
	
    <table style="width: 100%; background-color: #B3BFBF; border-radius: 12px; padding: 35px;" border="0">
        <tr>
		
            <th width="25%">
                <img src="Css&img/logo1.jpg" width="250" height="150" >
            </th>
            <th>
                <h1 align="center" style="font-size: 50px;">HEALTH CARE CENTER</h1>
            </th>
            <th width="25%"><br>
                <br><br>
            </th>
        </tr>
    </table><br>
    <ul class="menu">
        <li class="menu"><a href="#">HOME</a></li>
        <li class="menu"><a href="#">ABOUT</a></li>
        <li class="menu"><a href="#">CONTACT</a></li>
        <li class="menu"><a href="#">ROOM</a></li>
        <li class="menu"><a href="#">PAYMENT</a></li>
    </ul><br>
    
    <%
    	String id =request.getParameter("id");
    	String fname =request.getParameter("fname");
    	String lname =request.getParameter("lname");
    	String specialization =request.getParameter("specialization");
    	String address =request.getParameter("address");
    	String email =request.getParameter("email");
    	String phone =request.getParameter("phone");
    	String gender =request.getParameter("gender");
    	String username =request.getParameter("uname");
    	String password =request.getParameter("Pwd");
    %>
    
    <table border="1" style="width:100%">
        <tr>
            <th align="left">
            <h1>Update Account</h1>
            <form action="update" method="post">
            	<table id="table" style="width:50%">
					
					<tr>
						<td>Doctor ID</td>
						<td><input type="text" name="docid" value="<%= id %>"readonly></td>
					</tr>
					<tr>
						<td>First Name</td>
						<td><input type="text" name="fname" value="<%= fname %>"></td>
					</tr>
					<tr>
						<td>Last Name</td>
						<td><input type="text" name="lname" value="<%= lname %>"></td>
					</tr>
					<tr>
						<td>Specialization</td>
						<td><input type="text" name="spec" value="<%= specialization %>"></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><input type="text" name="address" value="<%= address %>"></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="text" name="email" value="<%= email %>"></td>
					</tr>
					<tr>
						<td>Contact no.</td>
						<td><input type="text" name="phone" value="<%= phone %>"></td>
					</tr>
					<tr>
						<td>Gender</td>
						<td><input type="text" name="gender" value="<%= gender %>"></td>
					</tr>
					<tr>
						<td>Username</td>
						<td><input type="text" name="uname" value="<%= username %>"></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="text" name="Pwd" value="<%= password %>"></td>
					</tr>
					
				</table>
                
            </th>
        </tr>
        <tr>
            <td><input type="submit" name="update" value="Update My data"></td>
        </tr>
     </form>
    </table>
   

		        <footer style="border-radius: 12px;">
        <table style="width: 100%; color: black;" border="0">
            <tr align="left">
                <th width="50%">
                    <h3><a class="textDeco" href="About page.html">About Us :</a></h3>
                </th>
                <th width="50%">
                    <h3>Contact Us :</h3>
                </th>
            </tr>
            <tr>
                <th align="left" width="50%">
                    Welcome to our e-channeling website!<br>
                    We are a premier online platform dedicated to connecting<br>
                    patients with healthcare professionals in a convenient and<br>
                    efficient manner. Our mission is to revolutionize the way people<br>
                    access medical care by providing a user-friendly interface that allows<br>
                    patients to schedule appointments with their preferred doctors or specialists.<br>
                </th>
                <th>
                    <table border="0" width="100%">
                        <tr align="left">
                            <th><img src="Css&img/phone.png" style = "width:10%; length:10%;"></th>
                            <th>Phone Number : 0771234567</th>
                            <th><img src="Css&img/phone.png" style = "width:10%; length:10%;"></th>
                        </tr>
                        <tr align="left">
                            <th><img src="Css&img/email.png" style = "width:10%; length:10%;"></th>
                            <th>Email : medical@gmail.com</th>
                            <th><img src="Css&img/email.png" style = "width:10%; length:10%;"></th>
                        </tr>
                        <tr align="left">
                            <th><img src="Css&img/address.png" style = "width:10%; length:10%;"></th>
                            <th>Address : malabe</th>
                            <th><img src="Css&img/address.png" style = "width:10%; length:10%;"></th>
                        </tr>
                    </table>
                </th>
            </tr>
        </table>
    </footer>
	
</body>
</html>