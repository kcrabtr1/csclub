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
      $("#Home").hide();
      
    </script>
    
  </head>
  <body >
      <div class="featurette" align="center">
            <h1 class="featurette-heading">Computer Science Club</h1>
            <p class="lead">Who to contact:</p>
            <h4><p><ul style="list-style-type:disc">
                <p>President of the club Charlie, who can be reached at ccook14@student.fitchburgstate.edu</p>
                <p>If you need to get into the computer science club room, email the secretary Sean O'Neil.</p>
                <p>And the computer science club email is compsci@student.fitchburgstate.edu</p>
              </ul></p></h4>
        </div>
  </body>
</html>
