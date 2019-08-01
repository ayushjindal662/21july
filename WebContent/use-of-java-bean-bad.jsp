<%@page import="mybeans.Person"%>
<%@page import="javafx.util.converter.PercentageStringConverter"%>
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
	// create object of BEAN class
	Person person = new Person();

	// fetch HTML form data and store that data
	// inside the object of person using setter methods
	person.setName(request.getParameter("name"));
	person.setAddress(request.getParameter("address"));
	person.setAge(
			Float.parseFloat(request.getParameter("age")));
	
	// store the object of person inside session
	// object
	session.setAttribute("p", person);
	
	// redirect the request
	response.sendRedirect("fetch_data_of_bean.jsp?v=1");
%>
</body>
</html>












