<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/topDivs.jsp"></jsp:include>
<jsp:include page="/normalSideNav.jsp"></jsp:include>

<div class="col-10">
Item Id: ${countableItems.itemId}  <br/>
Item Name: ${countableItems.itemName}  <br/>
Remaining Quantity: ${countableItems.remainingQuantity} <br/>
Type: ${countableItems.type}  <br/>
Lower Limit: ${countableItems.lowerLimit}  <br/> <br/>  <br/> 

Enter new details:
<form action="processEditCountabltItem">

			<label for="itemname">Item Name: </label>
			<input type="text" id="itemname" name="itemName" class="form-control"  required> <br/>
			<label for="quantity">Remaining Quantity: </label>
			<input type="number" id="quantity" name="remainingQuantity" min="0" class="form-control"  required> <br/>
			
			<label for="type">Type: </label>
			<input type="radio" id="critical" id="type" name="type" value="true"  required>
			<label for="critical">Critical</label>
			<input type="radio" id="ncritical" name="type" value="false" >
			<label for="ncritical">Non-Critical</label> <br/>
			
			<label for="lowerlimit">Lower Limit: </label>
			<input type="number" id="lowerlimit" name="lowerLimit" min="0" class="form-control" > <br/>
			
			
			<input type="submit" value="Edit Item" class="btn btn-warning"> <br/>
			<input type="hidden" name="itemId" value="${countableItems.itemId}">
			<a href="countableItemsAdvanced" class="btn btn-primary">Cancel</a>
</form>
</div>

<jsp:include page="/bottomDivs.jsp"></jsp:include>
</body>
</html>