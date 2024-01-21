<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Appoinments</title>

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

	<div class="container">
		<h1>Appoinments</h1>

		<div class="form-group">

			<form action="appoinmentSearch" method="post">


				<label for="dropdown">Select an option:</label> <select
					name="doctor">

					<option value="Dr.H.S.D.Rathnayake">Dr.H.S.D.Rathnayake</option>
					<option value="Dr.A.Perera">Dr.A.Perera</option>
					<option value="Dr.C.N.Jayamali">Dr.C.N.Jayamali</option>
					<option value="Dr.K.Gamage">Dr.K.Gamage</option>
					<option value="Dr.S.De Silva">Dr.S.De Silva</option>
					<option value="Dr.Y.N.Bandara">Dr.Y.N.Bandara</option>
					<option value="Dr.L.L.Jayaweera">Dr.L.L.Jayaweera</option>
				</select>



				<div class="form-group">
					<label>Select a date:</label> <input type="date" name="date"
						class="form-input">
				</div>

				<div class="form-group">
					<input type="submit" name="submit" value="Search"
						class="form-button">
				</div>
					</form>

				<table style="width: 100%; border-radius: 12px; padding: 35px;" border="1">
					<thead>
						<tr>
							<th>ID</th>
							<th>First name</th>
							<th>Last name</th>
							<th>Email</th>
							<th>Doctor</th>
							<th>Phone Number</th>
							<th>Date</th>
							<th>Status Update</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="apt" items="${appDetails}">

							<tr>
								<td>${apt.id}</td>
								<td>${apt.fname}</td>
								<td>${apt.lname}</td>
								<td>${apt.email}</td>
								<td>${apt.doctor}</td>
								<td>${apt.phone}</td>
								<td>${apt.date}</td>
								<td>
										<button onclick="openForm('${apt.id}', '${apt.fname}', '${apt.lname}','${apt.email}','${apt.doctor}', ' ${apt.phone}', ' ${apt.date}')" class="form-button">Confirm Channel</button>
										<button onclick="openUpdateForm('${apt.id}', '${apt.fname}', '${apt.lname}','${apt.email}','${apt.doctor}', ' ${apt.phone}', ' ${apt.date}')" class="form-button">Update Date</button>
									
									
									
								</td>
							</tr>
						</c:forEach>

					</tbody>

				</table>

		
		</div>


	</div>
	<br> <br>
	<br> <br>
	
	
</body>


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
//Java script function
<script>
  				function openForm(id, fname, lname ,email, doctor, phone, date) {
    			window.location.href = "updateChanneling.jsp?id=" + id + "&fname=" + encodeURIComponent(fname) + "&lname=" + encodeURIComponent(lname) +"&doctor=" + encodeURIComponent(doctor) +"&phone=" + encodeURIComponent(phone) +"&email=" + encodeURIComponent(email)+ "&date=" + encodeURIComponent(date);
 		 }
  				
  				function openUpdateForm(id, fname, lname ,email, doctor, phone) {
  	    			window.location.href = "updateChannelingInfo.jsp?id=" + id + "&fname=" + encodeURIComponent(fname) + "&lname=" + encodeURIComponent(lname) +"&doctor=" + encodeURIComponent(doctor) +"&phone=" + encodeURIComponent(phone) +"&email=" + encodeURIComponent(email);
  	 		 }
 		 
 		
</script>



</html>