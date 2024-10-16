<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href= "haha.jsp">test thu </a>
<%
	out.print(session.getAttribute("test"));
	out.print(session.getAttribute("tam"));
	int kq = 0, a=0, b =0;
	
	if (request.getAttribute("kq") != null){
		kq= (int)request.getAttribute("kq");
		a= (int)request.getAttribute("a");
		b= (int)request.getAttribute("b");
	}
%>
 <form action="tinh.jsp" method="post">
  a= <input type="number" name="txta" value="<%=a%>"> <br>
  b= <input type="number" name="txtb" value="<%=b%>"> <br>
  kq= <input type="number" name="txtkq" 
     value=> <br>
  <input type="submit" name="butcong" value="+"> <br>
  <input type="submit" name="buttru" value="-"> <br>
 </form>
</body>
</html>