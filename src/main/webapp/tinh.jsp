<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <% //lay ve gia tri cua txta, txtb
  String aa=request.getParameter("txta");
     String bb=request.getParameter("txtb");
     if(aa!=null&&bb!=null){//Neu ko phai chay lan dau
	     int a=Integer.parseInt(aa);//Doi ra so
	     int b=Integer.parseInt(bb);
	     int kq=0;
	     if(request.getParameter("buttru")!=null)//kich nut -
	        kq=a-b;
	     if(request.getParameter("butcong")!=null)
	    	 kq=a+b;
	     //Dieu huong sang trang maytinh truyen tham so la kq
	     response.sendRedirect("maytinh.jsp?kq="+kq+"&a="+a+"&b="+b);
     }else
    	 out.print("Chay lan dau");
  %>
</body>
</html>