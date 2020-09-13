<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Countable Item</title>
</head>
<body>
<jsp:include page="/topDivs.jsp"></jsp:include>
<jsp:include page="/normalSideNav.jsp"></jsp:include>

<div class="col-10">

<h1>Countable Item</h1>

Item Id: ${countableItems.itemId}  <br/>
Item Name: ${countableItems.itemName}  <br/>
Remaining Quantity: ${countableItems.remainingQuantity} <br/>
Type: ${countableItems.type}  <br/>
Lower Limit: ${countableItems.lowerLimit}  <br/> 


<form action="retrieveCountableItem"> 
		<input type="hidden" name = "itemId" value="${countableItems.itemId}" >
		<input type="submit" value="Retrieve Stock" class="btn btn-primary">
</form>

</div>
<jsp:include page="/bottomDivs.jsp"></jsp:include>



</body>
</html>