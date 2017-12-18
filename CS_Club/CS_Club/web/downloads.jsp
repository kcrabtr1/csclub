<%-- 
    Document   : welcome
    Created on : Oct 12, 2017, 1:25:48 PM
    Author     : Kevincrabtree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CS Club</title>
    <%@include file="Header.jsp" %>
    <% // session control
      if (logged == null || !logged.equals("member")) {
        response.sendRedirect("index.jsp");
      }
    %>
    <script>
      $("#login").hide();
      $("#logout").show();
      $("#Register").hide();
      $("#Manage").hide();
      $("#Users").hide();
      $("#News").hide();
      $("#Home").hide();
    </script>
    
  </head>
  <body >
      <h1 align="center">Welcome back <%= fname %>!</h1>
  </body>
</html>
