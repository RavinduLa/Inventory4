<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.ravi.InventoryApp4.model.UncountableLowStock" %>
    <%@ page import="com.ravi.InventoryApp4.controller.UncountableLowStockController" %>
    <%@ page import="com.ravi.InventoryApp4.dao.CountableLowstockRepo" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uncountable Items- Low Stock</title>
</head>
<body>
<jsp:include page="/topDivs.jsp"></jsp:include>
<jsp:include page="/normalSideNav.jsp"></jsp:include>

<div class="col-10">

<h1>Low Stock- Uncountable Items</h1>

<table class="table table-striped">
		<tr> 
			<th>Item Id </th>
			<th>Item Name </th>
			
		</tr>
		
		
		<c:forEach items="${lowStockList}" var="item">
	
		 <tr>
		 		
		 	<td><c:out value="${item.itemId}"> </c:out>   </td>
		 	<td><c:out value="${item.itemName}"> </c:out> </td>
		 		
			
		 </tr>
		 
	</c:forEach>
		 
	</table>

</div>
<jsp:include page="/bottomDivs.jsp"></jsp:include>
</body>
</html>