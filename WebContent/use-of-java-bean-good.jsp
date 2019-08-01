<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- HTML comments -->
<%-- JSP comments --%>
<%-- hey dear container please create object of 
bean for us and put that object inside session--%>
<jsp:useBean id="p" class="mybeans.Person" scope="session"></jsp:useBean>

<%--hey container please fetch HTML form data and
put that data inside object of bean using setters --%>
<jsp:setProperty property="*" name="p"/>
<%
	response.sendRedirect("fetch_data_of_bean.jsp?v=2");
	//
	/*
	*/
%>
</body>
</html>