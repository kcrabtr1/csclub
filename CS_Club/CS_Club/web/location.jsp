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
      <div class="featurette" align="center">
            <h1 class="featurette-heading">About the Computer Science Club</h1>
            <p class="lead">We're here for you!</p>
            <h4><p><ul style="list-style-type:disc">
                <p>The computer Science club is a place where you can hangout and meet other people within the CS or computer info majors.</p>
                <p>In the computer Science Club, which is located in the basement of the Edgerly building in the far corner. Just come on in, sign in and make yourself at home.</p>
                <p>Everyone within the computer science club is friendly and willing to answer any questions you have or help you with any problems you may have.</p>
                <p></p>
                <img src = "images/computer-science-club.jpg">
              </ul></p></h4>
        </div>
  </body>
</html>
