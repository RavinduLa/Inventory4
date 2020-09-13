<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.ravi.InventoryApp4.service.ItemService"%>
<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.ravi.InventoryApp4.model.Items" %>
    <%@ page import="com.ravi.InventoryApp4.controller.ItemController" %>
    <%@ page import="com.ravi.InventoryApp4.dao.ItemRepo" %>
    
    
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Items</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="/navbar.jsp"></jsp:include>
	<h1> All items</h1>
	
	
	<table class="table table-striped">
		<tr> 
			<th>Item Id </th>
			<th>Item Name </th>
			<th>Actions </th>
		</tr>
		
		
		<c:forEach items="${itemList}" var="item">
	
		 <tr>
		 		
		 	<td><c:out value="${item.itemId}"> </c:out>   </td>
		 	<td><c:out value="${item.itemName}"> </c:out> </td>
		 	
		 	
			 	
				<td>
					<form action="getItem"> 
						<input type="hidden" name = "itemId" value="${item.itemId}" >
						<input type="submit" value="View">
					</form> 
				</td>
				
				<td> 
					<form action="deleteItem">
						<input type="hidden" name="itemId" value="${item.itemId}">
						<input type="submit" value="Delete">
					</form>
				</td>
			
		 </tr>
		 
	</c:forEach>
		 
	</table>
	
      
	

</body>
</html>