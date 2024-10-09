<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%
   String un1= request.getParameter("txtun");
   String pass= request.getParameter("txtpass");
   String tb=null;
   if(un1!=null&&pass!=null){
	   if(un1.equals("abc")&&pass.equals("123")){
		   session.setAttribute("dn",un1);
		   response.sendRedirect("tc.jsp");
	   }else{
		   tb="Dang nhap sai";
	   }
   }
%>
<form action="dangnhap.jsp" method="post">
  User name= <input type="text" name="txtun"> <br>
  Password= <input type="password" name="txtpass"> <br>
  <input type="submit" name="but" value="Login"> <br>
 </form> <br><%=((tb!=null)?tb:"")%>
</body>
</html>