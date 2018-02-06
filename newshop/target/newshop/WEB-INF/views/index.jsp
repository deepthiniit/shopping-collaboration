<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jquery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled javascript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%-- <link href="<c:url value="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>" rel="stylesheet">  --%>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>

<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
  
  
  
<title>NewShop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<form class="search" action="action_page.php">
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
<div class="container">
  <h2>OnlineShopping</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/download.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="resources/download11.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="resources/download12.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div class="container">
  <h2>Image Gallery</h2>
  <br>
  
  <div class="row">
 <%--  <c:if test="${!empty Listofproduct}"><p>Product list</p></c:if> --%>
<%-- <c:forEach items="${Listofproduct}" var="pd" >
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" >
          <img src="resources/images/${pd.pid}.jpg" alt="" style="width:50%" /></a>
          <div class="caption">
          <button type="button" onclick="submit">Buy</button>
 		  <button type="button" onclick="submit">Add to Cart</button>
          </div>
        
      </div>
    </div>
    
     </c:forEach> --%>
     </div>
     </div>
<jsp:include page="footer.jsp"></jsp:include>

<footer class="footer">
  <div class="container text-right">
    <a href="#"><i class="fa fa-facebook"></i></a>
    <a href="#"><i class="fa fa-twitter"></i></a>
    <a href="#"><i class="fa fa-linkedin"></i></a>
    <a href="#"><i class="fa fa-google-plus"></i></a>
    <a href="#"><i class="fa fa-skype"></i></a>
  </div>
</footer>
 </body>
</html>