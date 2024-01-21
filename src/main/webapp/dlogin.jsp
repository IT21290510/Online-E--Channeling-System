
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor login</title>
<link rel="stylesheet" href="Css&img/home.css">
<link rel="stylesheet" href="Css&img/Select SignIn.css">
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
            <th align="center">
            <h1>Doctor Login</h1>
            	<form action="dlog" method="post">
          
                    <h3 class="fcolor"> User name:</h3>
                    <input type="text" name="user_name" placeholder="Enter username" class="design1" required > <br /> <br />
                    <h3 class="fcolor"> Password:</h3>
                    <input type="password" name="Pwd" id="pwd" placeholder="Enter password" class="design1" required> <br/><br/>
                    <button type="submit" name="submit" class="subBtn" value="login" >Submit</button>
            	</form>
                
                    
            </th>
        </tr>
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