<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/3.3.7/css/font-awesome.min.css" rel="stylesheet"> 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<title>NewShop</title>
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
	<div class="navbar-header">
	<a class="navbar-brand" href="#">Payment Details</a>
	</div>
<ul class="nav navbar-nav">
<li class="active"><a href="index">Home</a></li>
<li class="active"><a href="login">Save</a></li>
<li class="active"><a href="User">Cancel</a></li>
</ul>
</div>
</nav>	
<div class="conatiner">
<h2>Welcome to Payment Page</h2>
<section>
<form id=payment>
    <fieldset>
        <ol>
            <li>
                <label for="name">Name</label>
 
                <input id="name" name="name" type="text" placeholder="First and last name" required />
            </li>
            <li>
                <label for=email>Email</label>
                <input id="email" name="email" type="email" placeholder="example@gmail.com" required />
            </li>
            <li>
                <label for="phone">Phone</label>
                <input id="phone" name="phone" type="tel/mob" placeholder="+91 enter 10 digits number" required />
            </li>
        </ol>
    </fieldset>
    <fieldset>
        <legend>Delivery address</legend>
        <ol>
            <li>
                <label for="address">Address</label>
                <textarea id="address" name="address" rows="5" required>
                </textarea>
            </li>
            <li>
                <label for="postcode">Post Code</label>
                <input id="postcode" name="postcode" type="text" required />
            </li>
            <li>
                <label for="country">Country</label>
                <input id="country" name="country" type="text" required />
            </li>
        </ol>
    </fieldset>
    <fieldset>
        <legend>Card Details</legend>
        <ol>
            <li>
            <fieldset>
                <legend>"Card Type"</legend>
                <ol>
                    <li>
                        <input id="visa" name="cardtype" type="radio" />
                        <label for=visa>VISA</label>
                    </li>
                    <li>
                        <input id="ing" name="cardtype" type="radio" />
                        <label for="ing">Ing</label>
                    </li>
                    <li>
                        <input id="mastercard" name="cardtype" type="radio" />
                        <label for="mastercard">Mastercard</label>
                    </li>
                </ol>
            </fieldset>
            </li>
            <li>
                <label for="cardnumber">Card Number</label>
                <input id="cardnumber" name="cardnumber" type="number" required />
            </li>
            <li>
                <label for="secure">Security Code</label>
                <input id="secure" name="secure" type="number" required />
            </li>
            <li>
                <label for="namecard">Name on Card</label>
                <input id="namecard" name="namecard" type="text" placeholder="Exact namne as on the card" required />
            </li>
        </ol>
    </fieldset>
    <fieldset>
        <button type="submi"t>Buy It!</button>
    </fieldset>
</form>
</section>

</body>
</html> --%>