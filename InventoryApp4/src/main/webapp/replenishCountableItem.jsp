<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Retrieve Item</title>
</head>
<body>
<jsp:include page="/topDivs.jsp"></jsp:include>
<jsp:include page="/normalSideNav.jsp"></jsp:include>

<div class="col-10">
<h1>Replenish Countable Items</h1>

	Item Id: ${countableItems.itemId}  <br/>
	Item Name: ${countableItems.itemName}  <br/>
	Remaining Quantity: ${countableItems.remainingQuantity} <br/>
	Type: ${countableItems.type}  <br/>
	Lower Limit: ${countableItems.lowerLimit}  <br/> 
	
	<form action = "processReplenish" >
	<input type="hidden" name="itemId" value= "${countableItems.itemId}" >
		Quantity to be Replenished<input type="number" name="replenishQuantity" min = "0">
		<input type="submit" value="Replenish">
	</form>
</div>
<jsp:include page="/bottomDivs.jsp"></jsp:include>
</body>
</html>