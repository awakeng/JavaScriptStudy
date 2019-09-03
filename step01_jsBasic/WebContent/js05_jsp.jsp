<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js05_jsp.jsp</title>
</head>
<body>
	
	<%
		request.setAttribute("jsonData", "{\"name\" : \"김혜수\", \"age\" : 30}");
	%>
	
	<div id = "dataView"></div>
	<br><hr><br>
	<script type="text/javascript">
		let data = '${requestScope.jsonData}';
		
		document.write(data);
	//	eval('document.write(data)');
		
		data = JSON.parse(data);
		console.log(data.name);
		document.getElementById("dataView").innerText = data.name;
	</script>
</body>
</html>