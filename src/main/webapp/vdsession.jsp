<%@page import="Tam.luutru"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //Tao ra 1 session: tong
    //Kiem tra da tao session: tong chua
    if(session.getAttribute("tong")==null){//CHua tao
    	session.setAttribute("tong",(int)0);//Tao ra
    }
   String nn= request.getParameter("txtn");
   if(nn!=null){
	   int n= Integer.parseInt(nn);
	   //b1: Lay session gan vao bien
	   int s=(int)session.getAttribute("tong");
	   //b2: Thay doi bien
	   s=s+n;
	   //b3: Luu bien vao lai session
	   session.setAttribute("tong",s);
	   out.print("Tong: "+ session.getAttribute("tong"));
   }
   %> <a href="mt.jsp"> Mo mt </a>
<form action="vdsession.jsp" method="post">
  n= <input type="number" name="txtn" placeholder="Nhap n"> <br>
  <input type="submit" name="but" value="Tong"> <br>
 </form>
</body>
</html>