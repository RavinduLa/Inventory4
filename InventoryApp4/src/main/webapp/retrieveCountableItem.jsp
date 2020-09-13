<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Retrieve Countable Item</title>
</head>
<body>
<jsp:include page="/topDivs.jsp"></jsp:include>
<jsp:include page="/normalSideNav.jsp"></jsp:include>

<div class="col-10">
<h1>Retrieve Countable Items</h1>
	Item Id: ${countableItems.itemId}  <br/>
	Item Name: ${countableItems.itemName}  <br/>
	Remaining Quantity: ${countableItems.remainingQuantity} <br/>
	Type: ${countableItems.type}  <br/>
	Lower Limit: ${countableItems.lowerLimit}  <br/> 
	
	<form action = "processRetreive" >
		<input type="hidden" name="itemId" value= "${countableItems.itemId}" >
		<label for="quantity">Quantity to be Retrieved:</label>
		<input type="number" id="quantity" name="retrieveQuantity" class="form-control" min = "0" max="${countableItems.remainingQuantity}"> <br/>
		<input type="submit" value="Retrieve" class="btn btn-primary btn-block">
	</form>
	
</div>
<jsp:include page="/bottomDivs.jsp"></jsp:include>
</body>
</html>