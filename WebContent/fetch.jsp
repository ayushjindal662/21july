<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	// fetch the values associate with checkboxes
	String[] values = request.getParameterValues
	("topic");

	// check if no checkbox was seleceted by client
	if(values != null)
	{
		for(String value : values)
		{
%>
	<li>
		<%=value%>
	</li>
<%
		}
	}
	else
	{
%>	
	<script type="text/javascript">
		alert('no topic selected');
		window.location = "index.html";
	</script>
<%
	}
%>
</body>
</html>