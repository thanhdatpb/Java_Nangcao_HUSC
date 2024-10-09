<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String masach = request.getParameter("ms");
	String tensach = request.getParameter("ts");
	String gia = request.getParameter("gia");
	giohangbo gh = null;
	if(session.getAttribute("gh") == null ){
		gh = new giohangbo();
		session.setAttribute("gh", gh);
	}
	gh = (giohangbo)session.getAttribute("gh");
	gh.Them(masach, tensach, Long.parseLong(gia), (long) 1);
	session.setAttribute("gh", gh);
	response.sendRedirect("htgio.jsp");
	

%>
</body>
</html>