<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Retrieve Uncountable Item</title>
</head>
<body>
<jsp:include page="/topDivs.jsp"></jsp:include>
<jsp:include page="/normalSideNav.jsp"></jsp:include>

<div class="col-10">
<h1>Retrieve Uncountable Items</h1>
	Item Id: ${uncountableItems.itemId}  <br/>
	Item Name: ${uncountableItems.itemName}  <br/>
	Remaining Quantity: ${uncountableItems.remainingAmount} <br/>
	Unit: ${uncountableItems.unit} <br/>
	Type: ${uncountableItems.type}  <br/>
	Lower Limit: ${uncountableItems.lowerLimit}  <br/> 
	
	<form action = "processRetrieveU" >
	<input type="hidden" name="itemId"  value= "${uncountableItems.itemId}" >
	<label for="amount">Amount to be Retrieved:</label>
		<input type="number" id ="amount" step="0.1" name="retieveAmount" class="form-control" min = "0" max="${uncountableItems.remainingAmount}"> <br/>
		<input type="submit" value="Retrieve" class="btn btn-primary btn-block">
	</form>
	
</div>
<jsp:include page="/bottomDivs.jsp"></jsp:include>
</body>
</html>