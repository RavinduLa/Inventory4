<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.ravi.InventoryApp4.model.Items" %>
    <%@ page import="com.ravi.InventoryApp4.controller.ItemController" %>
    <%@ page import="com.ravi.InventoryApp4.dao.ItemRepo" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Item</title>
</head>
<body>
<jsp:include page="/navbar.jsp"></jsp:include>
	<h1>View Item</h1>
	<%%>
	${items}
	 <table>
	 <tr>
	 	<th>Item Id</th>
	 	<th>Item Name</th>
	 	
	 	</tr>
	 	
	 	<tr>
	 	<td> ${items.itemId } </td>
	 	<td> ${items.itemName } </td>
	 </table>
	
	
</body>
</html>