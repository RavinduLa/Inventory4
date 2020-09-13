<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uncountable Item</title>
</head>
<body>
<jsp:include page="/topDivs.jsp"></jsp:include>
<jsp:include page="/normalSideNav.jsp"></jsp:include>

<div class="col-10">

<h1>Uncountable Item</h1>

Item Id: ${uncountableItems.itemId}  <br/>
Item Name: ${uncountableItems.itemName}  <br/>
Remaining Amount: ${uncountableItems.remainingAmount} <br/>
Unit: ${uncountableItems.unit}  <br/>
Type: ${uncountableItems.type}  <br/>
Lower Limit: ${uncountableItems.lowerLimit}  <br/> 


<form action="retrieveUncountableItem"> 
		<input type="hidden" name = "itemId" value="${uncountableItems.itemId}" >
		<input type="submit" value="Retrieve Stock" class="btn btn-primary">
</form>


</div>
<jsp:include page="/bottomDivs.jsp"></jsp:include>
</body>
</html>