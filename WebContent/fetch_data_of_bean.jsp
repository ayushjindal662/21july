<%@page import="mybeans.Person"%>
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
		String v = request.getParameter("v");
			String message = "";
		if (v != null) 
		{
			if (v.equals("1")) 
			{
				message = "bad";
			} else 
			{
				message = "good";
			}
		}
		
		// fetch oject of person from the session
		Person per = (Person) session.getAttribute("p");
	%>
		<p>
			Name is <%=per.getName()%>, age is
			 <%=per.getAge()%>, address is 
			 <%=per.getAddress()%> from <%=message%>
		</p>
</body>
</html>