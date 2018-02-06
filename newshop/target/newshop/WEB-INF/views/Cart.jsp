<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NewShop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<form action="cartrequest" method="post" modelAttribute="obcartjsp">
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="container">
<h2>Product List for Customer</h2>

<table class="table table-hover" id="ap1" class="display" border="2" width="80" align="center">
<tr>

<th>Product Name</th>
<th>Product Quantity</th>
<th>Product Price</th>
<th>Product Image</th>
<th>Sub Total</th>
<th>Action</th>
</tr>

<c:if test="${empty cartInfo }">
<tr>
<td colspan="10" align="center">No Record Exists!!</td>
</tr>
</c:if>

<c:forEach var="p" varstatus="st" items="${cartInfo }">
<tr>

<td><c:out value="${p.prodName }"></c:out></td>
<td><c:out value="${p.qty }"></c:out></td>
<td><c:out value="${p.price }"></c:out></td>
<td><c:out value="${p.stock }"></c:out></td>
<td><img src="${pageContext.request.contextPath }/resources/${p.imgName}" height="50px" width="50px"></td>
<td><c:out value="${p.qty*p.price }"/></td>
<td class="span2">
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<a class="btn btn-info" role="button" href="<c:url value="/deletePCart/${p.cartId }"/>">Delete</a>
</td>
</tr>
</c:forEach>
<td>
<c:set var="gtot" value="${gtot+p.price*p.qty }"></c:set>
<span class="col-lg-9" align="right"><label>Grand Total</label><c:out value="${gtot}"/></span>
</td>
<tfoot>
<td>
<a class="btn btn-warning btn-lg" href="${pageContext.request.contextPath }/index">Continue Shopping</a>
</td>
<td>
<a class="btn btn-warning btn-lg" href="${pageContext.request.contextPath }/checkout">Checkout</a>
</td>

</table>



</div>
</form>
</body>
</html>
 --%>