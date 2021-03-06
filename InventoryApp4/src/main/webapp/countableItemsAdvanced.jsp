<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.ravi.InventoryApp4.service.ItemService"%>
<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.ravi.InventoryApp4.model.CountableItems" %>
    <%@ page import="com.ravi.InventoryApp4.controller.CountableItemController" %>
    <%@ page import="com.ravi.InventoryApp4.dao.CountableItemRepo" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Countable Items- Advanced Functions</title>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="css/deleteConfirmModal.css">

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>


<style>
	.headerLink{
		text-align: center;
	}
	.headerLink h1{
		display:inline-block;
		float:left;
	}
	.headerLink a{
		float:right;
	}
</style>
</head>
<body>
<jsp:include page="/topDivs.jsp"></jsp:include>
<jsp:include page="/normalSideNav.jsp"></jsp:include>

<div class="col-10">
<br/>
<div class="headerLink">
	<h1>Countable Items- Advanced Functions</h1> 
	<a href="addCountableItem.jsp" class="btn btn-secondary">
	Add countable items
	</a>
</div>

	<table class="table table-striped">
		<tr> 
			<th>Item Id </th>
			<th>Item Name </th>
			<th>Remaining Quantity </th>
			<th>Type </th>
			<th>Lower Limit </th>
			<th>Actions </th>
		</tr>
		
		
		<c:forEach items="${itemList}" var="item">
	
		 <tr>
		 		
		 	<td><c:out value="${item.itemId}"> </c:out>   </td>
		 	<td><c:out value="${item.itemName}"> </c:out> </td>
		 	<td><c:out value="${item.remainingQuantity}"> </c:out> </td>
		 	<td><c:out value="${item.type}"> </c:out> </td>
		 	<td><c:out value="${item.lowerLimit}"> </c:out> </td>
		 	
		 	
			 	
				<td>
					<form action="getCountableItem"> 
						<input type="hidden" name = "itemId" value="${item.itemId}" >
						<input type="submit" value="View" class="btn btn-dark">
					</form> 
				</td>
				
				<td>
					<form action="retrieveCountableItem"> 
						<input type="hidden" name = "itemId" value="${item.itemId}" >
						<input type="submit" value="Retrieve Items" class="btn btn-primary">
					</form>
				</td>
				
				<td>
					<form action="editCountableItem">
						<input type="hidden" name="itemId" value="${item.itemId}">
						<input type="submit" value="Edit" class="btn btn-warning">
					</form>
				</td>
				
				<td> 
					<form action="countableItemDeleteConfirm">
						<input type="hidden" name="itemId" value="${item.itemId}">
						<input type="submit" value="Delete" class="btn btn-danger">
					</form> 
					
					
				</td>
				
				<td> 
					<form action="replenishCountableItem">
						<input type="hidden" name="itemId" value="${item.itemId}">
						<input type="submit" value="Replenish" class="btn btn-success">
					</form>
				</td>
			
		 </tr>
		 
	</c:forEach>
		 
	</table>
	
	
	
	</div>
	
<jsp:include page="/bottomDivs.jsp"></jsp:include>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

</body>
</html>