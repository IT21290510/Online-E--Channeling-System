<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor account</title>

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
    
    <table border="1" style="width:100%">
        <tr>
            <th align="left">
            <h1>User Details</h1>
            	<table id="table" style="width:50%">
				<c:forEach var ="doc" items ="${docDetails}"> 	
					
					<c:set var="id" value="${doc.id}"/>
					<c:set var="fname" value="${doc.firstName}"/>
					<c:set var="lname" value="${doc.lastName}"/>
					<c:set var="specialization" value="${doc.specialization}"/>
					<c:set var="address" value="${doc.address}"/>
					<c:set var="email" value="${doc.email}"/>
					<c:set var="phone" value="${doc.phone}"/>
					<c:set var="gender" value="${doc.gender}"/>
					<c:set var="username" value="${doc.username}"/>
					<c:set var="password" value="${doc.password}"/>
					
					<tr>
						<td>Doctor ID</td>
						<td>${doc.id}</td>
					</tr>
					<tr>
						<td>First Name</td>
						<td>${doc.firstName}</td>
					</tr>
					<tr>
						<td>Last Name</td>
						<td>${doc.lastName}</td>
					</tr>
					<tr>
						<td>Specialization</td>
						<td>${doc.specialization}</td>
					</tr>
					<tr>
						<td>Address</td>
						<td>${doc.address}</td>
					</tr>
					<tr>
						<td>Email</td>
						<td>${doc.email}</td>
					</tr>
					<tr>
						<td>Contact no.</td>
						<td>${doc.phone}</td>
					</tr>
					<tr>
						<td>Gender</td>
						<td>${doc.gender}</td>
					</tr>
					<tr>
						<td>Username</td>
						<td>${doc.username}</td>
					</tr>
					<tr>
						<td>Password</td>
						<td>${doc.password}</td>
					</tr>
					
				</c:forEach>
				</table>
				
				<br>
				<form action="fetchData" method="post">
					<input type="submit" class="btn1" value="View Appointments">
				</form><br>
				
				<c:url value="updateDoctor.jsp" var="docupdate">
					<c:param name="id" value="${id}"/>
					<c:param name="fname" value="${fname}"/>
					<c:param name="lname" value="${lname}"/>
					<c:param name="specialization" value="${specialization}"/>
					<c:param name="address" value="${address}"/>
					<c:param name="email" value="${email}"/>
					<c:param name="phone" value="${phone}"/>
					<c:param name="gender" value="${gender}"/>
					<c:param name="uname" value="${username}"/>
					<c:param name="Pwd" value="${password}"/>
				</c:url>
                
                <a href="${docupdate}">
                <input type="button" name="update" class="button1" value="Update my Data">
                </a>
                
                <c:url value="deleteDoctor.jsp" var="docdelete">
					<c:param name="id" value="${id}"/>
					<c:param name="fname" value="${fname}"/>
					<c:param name="lname" value="${lname}"/>
					<c:param name="specialization" value="${specialization}"/>
					<c:param name="address" value="${address}"/>
					<c:param name="email" value="${email}"/>
					<c:param name="phone" value="${phone}"/>
					<c:param name="gender" value="${gender}"/>
					<c:param name="uname" value="${username}"/>
					<c:param name="Pwd" value="${password}"/>
				</c:url>
                
                <a href="${docdelete}">
                <input type="button" name="delete" class="button1" value="Delete my Account">  
                </a>  
                
            </th>
        </tr>
    </table>
	<br><br>
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