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
	<h3>Are you sure you want to delete the following item?</h3>
	Item Id: ${uncountableItems.itemId}  <br/>
	Item Name: ${uncountableItems.itemName}  <br/>
	Remaining Amount: ${uncountableItems.remainingAmount} <br/>
	Unit: ${uncountableItems.unit}  <br/>
	Type: ${uncountableItems.type}  <br/>
	Lower Limit: ${uncountableItems.lowerLimit}  <br/> 
	
	<form action="deleteUncountableItem">
		<input type="hidden" name="itemId" value="${uncountableItems.itemId}">
		<input type="submit" value="Delete" class="btn btn-danger">
		<a href="uncountableItemsAdvanced" class="btn btn-primary">Cancel</a>
	</form>
</div>

<jsp:include page="/bottomDivs.jsp"></jsp:include>
</body>
</html>