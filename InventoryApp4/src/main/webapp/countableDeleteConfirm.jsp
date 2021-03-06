<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Delete</title>
</head>
<body>
<jsp:include page="/topDivs.jsp"></jsp:include>
<jsp:include page="/normalSideNav.jsp"></jsp:include>

<div class="col-10"> 
	<h3>Are you sure want to delete the following item?</h3>
	
	Item Id: ${countableItems.itemId}  <br/>
	Item Name: ${countableItems.itemName}  <br/>
	Remaining Quantity: ${countableItems.remainingQuantity} <br/>
	Type: ${countableItems.type}  <br/>
	Lower Limit: ${countableItems.lowerLimit}  <br/> 
	
	<form action="deleteCountableItem">
		<input type="hidden" name="itemId" value="${countableItems.itemId}">
		<input type="submit" value="Delete" class="btn btn-danger">
		<a href="countableItemsAdvanced" class="btn btn-primary">Cancel</a>
	</form>
</div>

<jsp:include page="/bottomDivs.jsp"></jsp:include>
</body>
</html>