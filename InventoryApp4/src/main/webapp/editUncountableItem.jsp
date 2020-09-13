<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Uncountable Item</title>
</head>
<body>

<jsp:include page="/topDivs.jsp"></jsp:include>
<jsp:include page="/normalSideNav.jsp"></jsp:include>

<div class="col-10">
Item Id: ${uncountableItems.itemId}  <br/>
Item Name: ${uncountableItems.itemName}  <br/>
Remaining Amount: ${uncountableItems.remainingAmount} <br/>
Unit: ${uncountableItems.unit}  <br/>
Type: ${uncountableItems.type}  <br/>
Lower Limit: ${uncountableItems.lowerLimit}  <br/>  <br/> <br/>

Enter new Details: <br/>
<form action="processEditUncountabltItem">

			<label for="itemname">Item Name: </label>
			<input type="text" id="itemname" name="itemName" class="form-control"  required> <br/>
			<label for="amount">Remaining Amount: </label>
			<input type="number" id="amount" step="0.1" name="remainingAmount" min="0" class="form-control"  required> <br/>
			
			<label for="units">Select Unit:</label>
				<select name="unit" id="units" class="form-control"  required>
					<option value="Grams">Grams</option>
					<option value="Kilograms">Kilograms</option>
					<option value="Mililiter">Milliliter</option>
					<option value="Liter">Liter</option>
				</select> <br/>
			
			<label for="type">Type: </label>
			<input type="radio" id="critical" id="type" name="type" value="true" required>
			<label for="critical">Critical</label>
			<input type="radio" id="ncritical" name="type" value="false" > 
			<label for="ncritical">Non-Critical</label> <br/>
			
			<label for="lowerlimit">Lower Limit: </label>
			<input type="number" id="lowerlimit" name="lowerLimit" min="0" class="form-control" > <br/>
			
			
			<input type="submit" value="Edit Item" class="btn btn-warning"> <br/>
			<input type="hidden" name="itemId" value="${uncountableItems.itemId}">
			<a href="uncountableItemsAdvanced" class="btn btn-primary">Cancel</a>
</form>
</div>

<jsp:include page="/bottomDivs.jsp"></jsp:include>

</body>
</html>