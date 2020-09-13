<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/navbar.jsp"></jsp:include>

<h3>Add item</h3>
	
	<form action="addItem">
		Item Id: <input type="number" name="itemId"> <br/>
		Item Name: <input type="text" name="itemName"> <br/>
		<input type="submit"> <br/>
	</form>

</body>
</html>