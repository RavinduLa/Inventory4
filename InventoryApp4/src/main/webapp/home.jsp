<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<jsp:include page="/navbar.jsp"></jsp:include>
	
	
	<div class="container-fluid">
	
		<div class="row">
		

			<jsp:include page="/normalSideNav.jsp"></jsp:include>

			<div class="col-10">
				<h3>Countable Items</h3>
				<a href="viewAllCountableItems"> View All Countable Items</a> <br/>
				<a href="addCountableItem.jsp">Add countable items</a> <br/>
				<a href="viewCountableLowStock">View Low stock for countable items</a> <br/>
				<a href="countableItemsAdvanced">Advanced functions on countable items</a> <br/>
				
				<h3>Uncountable Items</h3>
				<a href="viewAllUncountableItems"> View All Uncountable Items</a> <br/>
				<a href="addUncountableItems.jsp">Add Uncountable items</a> <br/>
				<a href="viewUncountableLowStock">View Low stock for uncountable items</a> <br/>
				<a href="uncountableItemsAdvanced">Advanced functions on uncountable items</a> <br/>
				
				<a href="/inventory/test.jsp">Test</a>
				
			</div>
			
		</div>  <!-- end of row -->
	
	</div>
</body>
</html>