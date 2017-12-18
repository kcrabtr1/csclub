<%-- 
    Document   : index
    Created on : Oct 24, 2017, 10:39:04 AM
    Author     : kevincrabtree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FSU computer Science Club</title>
    <%@include file="Header.jsp" %>
    <% // session control
      if (logged == null || !logged.equals("admin")) {
        response.sendRedirect("index.jsp");
      }
    %>
    <script>
      $("#login").hide();
      $("#logout").show();
      $("#Register").hide();
      $("#Downloads").hide();
      $("#About").hide();
      $("#Contact").hide();
      $("#Home1").hide();
    </script>
  </head>

  <body>
   <div class="container">
      <div class="row">
          <div class="col-md-12" align="center">
              <h4>This is the computer science club for Fitchburg State University
            Students.</h4>
              

       
          You is a admin boi
          where da blog at
          </div>
     
        
      </div>
    </div>
    Questions or comments.  Please contact <a href="mailto: <%= application.getInitParameter("webmaster") %>">
      webmaster</a>
  </body>
</html>
