<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
     <ul class="nav navbar-nav">
      <li class="active"><a href="mt.jsp">May tinh</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="logout.jsp">
        <span class="glyphicon glyphicon-user"></span>
          Log out</a></li>
          
      <%String un=(String)session.getAttribute("dn");
        if(un==null){
      %>
      <li><a href="dangnhap.jsp">
        <span class="glyphicon glyphicon-log-in"></span>
         Login</a></li>
      <%}else{ %>
          <li><a href="dangnhap.jsp">
        <span class="glyphicon glyphicon-log-in"></span>
        Xin chao: <%=un %></a></li>
      <%} %>   
    </ul>
  </div>
</nav>
<% out.print(session.getAttribute("tong"));
   int kq=0,a=0,b=0;
	String aa=request.getParameter("txta");
	String bb=request.getParameter("txtb");
	if(aa!=null&&bb!=null){//Neu ko phai chay lan dau
	     a=Integer.parseInt(aa);//Doi ra so
	     b=Integer.parseInt(bb);
	     kq=0;
	     if(request.getParameter("butchia")!=null){
	    	 if(b==0)
	    	out.print("<script>alert('Ve lop 1 ma hoc')</script>");
	     }
	}

%>
<form action="mt.jsp" method="post">
  a= <input type="number" name="txta" value="<%=a%>"> <br>
  b= <input type="number" name="txtb" value="<%=b%>"> <br>
  kq= <input type="number" name="txtkq" 
     value="<%=kq%>"> <br>
  <input type="submit" name="butcong" value="+"> <br>
  <input type="submit" name="buttru" value="-"> <br>
  <input type="submit" name="butchia" value="/"> <br>
 </form>
</body>
</html>