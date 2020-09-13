<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Replenish Uncountable Item</title>
</head>
<body>
<jsp:include page="/topDivs.jsp"></jsp:include>
<jsp:include page="/normalSideNav.jsp"></jsp:include>

<div class="col-10">

<h1>Replenish Uncountable Items</h1>
	Item Id: ${uncountableItems.itemId}  <br/>
	Item Name: ${uncountableItems.itemName}  <br/>
	Remaining Amount: ${uncountableItems.remainingAmount} <br/>
	Unit: ${uncountableItems.unit} <br/>
	Type: ${uncountableItems.type}  <br/>
	Lower Limit: ${uncountableItems.lowerLimit}  <br/> 
	
	<form action = "processReplenishU" >
	<input type="hidden" name="itemId" value= "${uncountableItems.itemId}" >
		Amount to be Replenished<input type="number" step="0.1" name="replenishAmount" min = "0">
		<input type="submit" value="Replenish">
	</form>
	
</div>
<jsp:include page="/bottomDivs.jsp"></jsp:include>


</body>
</html>