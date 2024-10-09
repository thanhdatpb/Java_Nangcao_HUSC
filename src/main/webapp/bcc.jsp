<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<table>
  <tr>
     <td> 
        <%@include file="trai.jsp" %>
     
      </td>
     <td>
   <td>  
Chon 1 bang cc: <br>
<%for(int i=1;i<=9;i++){%>
    <a href="bcc.jsp?b=<%=i%>"> <%=i %>  </a>   
 <%} %>        
  <br> Bang cuu chuong thu: 
  <%=request.getParameter("b") %> <hr>    
    <table class="table table-hover table-bordered">
       <%for(int i=1;i<=9;i++){ %>
          <tr>
             <%for(int j=1;j<=9;j++){ %>
              <td>
                 <%=j %> x<%=i %>=<%=j*i %>
               </td>
              <%} %> 
          </tr>
       <%} %>
    </table>
    </td>
    </tr>
    </table>
</body>
</html>