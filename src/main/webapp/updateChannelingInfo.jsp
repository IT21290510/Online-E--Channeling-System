<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="appoinmentstyle.css">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Import necessary stylesheets and scripts -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">

</head>
<body style = "background-image: url('image/appimg.jpg');">
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


<head>
<meta charset="ISO-8859-1">
<title>Update chaInfo</title>
</head>
<body>
<br>
<form action="channelUpdate" method="POST" class="patient-form">
		<h1 class="form-title">Searched Channeling Information</h1>
		<h2 class="form-title">-Update Date</h2>
		<label for="id">ID:</label>
		<input type="text" id="id" name="id" value="${param.id}" readonly class="form-input"> <br> 
		<label for="name">First Name:</label>
		<input type="text" id="fname" name="fname" value="${param.fname}" class="form-input"><br> 
		<label for="name">Last Name:</label>
		<input type="text" id="lname" name="lname" value="${param.lname}" class="form-input"><br>
		<label for="name">Doctor Name:</label>
		<input type="text" id="docname" name="docname" value="${param.doctor}" class="form-input"><br>
		<label for="email">Email:</label> 
		<input type="text" id="email" name="email" value="${param.email}" class="form-input"> <br> 
		<label for="name">Phone:</label>
		<input type="text" id="phone" name="phone" value="${param.phone}" class="form-input"><br>
		<label for="name">Date:</label>
		<input type="date" id="date" name="date"><br>
		<br><br>
		<input type="submit" name="channel" value="Update Date" class="form-button">
	
	<br><br>
	<a href = "appoinment.jsp">
	<input type = "button" name = "channeling" value = "Back To Search" class="form-button">
	</a>
	<br><br>
	</form>
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