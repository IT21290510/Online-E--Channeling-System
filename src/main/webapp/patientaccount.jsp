<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Account</title>
<link rel="stylesheet" href="style.css">

 <style>
    table {
      margin-left: auto;
      margin-right: auto;
    }
    h1 {
  	  text-align: center;
    }
  </style>

</head>

<body style = "background-image: url('image/bg3.jpg');">

 <table style="width: 100%; background-color: #B3BFBF; border-radius: 12px; padding: 35px;" border="0">
        <tr>
		
            <th width="25%">
                <img src="image/logo1.jpg" width="250" height="150" >
            </th>
            <th>
                <h1 align="center" style="font-size: 50px;">HEALTH CARE CENTER</h1>
            </th>
            <th width="25%"><br>
                <br><br>
            </th>
        </tr>
    </table><br>


<table class="my-table">
	<c:forEach var = "pt" items = "${ptntDetails}"> 
	
	<c:set var = "id" value = "${pt.id}"/>
	<c:set var = "fname" value = "${pt.fname}"/>
	<c:set var = "lname" value = "${pt.lname}"/>
	<c:set var = "age" value = "${pt.age}"/>
	<c:set var = "gender" value = "${pt.gender}"/>
	<c:set var = "email" value = "${pt.email}"/>
	<c:set var = "phone" value = "${pt.phone}"/>
	<c:set var = "username" value = "${pt.username}"/>
	<c:set var = "password" value = "${pt.password}"/>
	
	<h1>ACCOUNT DETAILS</h1>
	
	<tr>
		<td>Customer ID</td>
		<td>${pt.id}</td>
	</tr>
	<tr>
		<td>Customer first name</td>
		<td>${pt.fname}</td>
	</tr>
	<tr>
		<td>Customer last name</td>
		<td>${pt.lname}</td>
	</tr>
	<tr>
		<td>Customer age</td>
		<td>${pt.age}</td>
	</tr>	
	<tr>
		<td>Customer gender</td>
		<td>${pt.gender}</td>
	</tr>		
	<tr>
		<td>Customer email</td>
		<td>${pt.email}</td>
	</tr>		
	<tr>
		<td>Customer phone</td>
		<td>${pt.phone}</td>
	</tr>		
	<tr>
		<td>Customer username</td>
		<td>${pt.username}</td>
	</tr>		
	<tr>
		<td>Customer password</td>
		<td>${pt.password}</td>
	</tr>
	
	</c:forEach>
</table>


<c:url value = "updateuser.jsp" var = "userupdate">
	<c:param name = "id" value = "${id}" />
	<c:param name = "fname" value = "${fname}" />
	<c:param name = "lname" value = "${lname}" />
	<c:param name = "age" value = "${age}" />
	<c:param name = "gender" value = "${gender}" />
	<c:param name = "email" value = "${email}" />
	<c:param name = "phone" value = "${phone}" />
	<c:param name = "uname" value = "${username}" />
	<c:param name = "pass" value = "${password}" />
</c:url>

<br>
<a href = "${userupdate}">
	<input type = "button" name = "update" value = "Update User Details" class="btn">
</a>
<br><br>

<c:url value = "deletepatient.jsp" var = "patientdelete">
	<c:param name = "id" value = "${id}" />
	<c:param name = "fname" value = "${fname}" />
	<c:param name = "lname" value = "${lname}" />
	<c:param name = "age" value = "${age}" />
	<c:param name = "gender" value = "${gender}" />
	<c:param name = "email" value = "${email}" />
	<c:param name = "phone" value = "${phone}" />
	<c:param name = "uname" value = "${username}" />
	<c:param name = "pass" value = "${password}" />
</c:url>

<a href = "${patientdelete}">
<input type = "button" name = "delete" value = "Delete Account" class="btn">
</a>







<br><br>
<a href = "channeling.jsp">
<input type = "button" name = "channeling" value = "Channel a Doctor" class="btn">
</a>





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
                    It is our aim to make your visit with us a comfortable one.<br>
                    We practice with transparency, this means no suprises.<br>
                    Our doctors are locally trained, regulary educated,and are here<br>
                    to help you make informed decisions about the care we can provide for you.<br>
                    We are here to hold your hand and guide you through sometimes,<br>
                    unfortunately, difficult senarios.<br>
                    We are also here to provide some changing experiences that doctors can offer.<br>
                    Just ask our team that we can achieve for you!.<br>
                </th>
                <th>
                    <table border="0" width="100%">
                        <tr align="left">
                            <th><img src="image/phone.png" style = "width:10%; length:10%;"></th>
                            <th>Phone Number : 0771234567</th>
                            <th><img src="image/phone.png" style = "width:10%; length:10%;"></th>
                        </tr>
                        <tr align="left">
                            <th><img src="image/email.png" style = "width:10%; length:10%;"></th>
                            <th>Email : medical@gmail.com</th>
                            <th><img src="image/email.png" style = "width:10%; length:10%;"></th>
                        </tr>
                        <tr align="left">
                            <th><img src="image/address.png" style = "width:10%; length:10%;"></th>
                            <th>Address : malabe</th>
                            <th><img src="image/address.png" style = "width:10%; length:10%;"></th>
                        </tr>
                    </table>
                </th>
            </tr>
        </table>
    </footer>

</body>
</html>