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
        <%@include file="Header.jsp" %>
        <script>
      $("#login").show();
      $("#logout").hide();
      $("#About").hide();
      $("#Downloads").hide();
      $("#Contact").hide();
      $("#Manage").hide();
      $("#Users").hide();
      $("#News").hide();
      $("#Home").hide();
        </script>
  </head>

  <body>
   <div class="container">
      <div class="row" align="center">
        <h4>This is the computer science club for Fitchburg State University
            Students. 
        </h4>
          
          <div class="featurette" >
            <img class="featurette-image img-circle img-responsive pull-right" src="images/joinus.jpg" height="500px" width="500px">
            <h1 class="featurette-heading">New to the Computer Science Club?
                <p><a class="btn btn-primary btn-lg" href="register.jsp" role="button">Join Us Now!</a>
            </h1>
            <p class="lead">Creating and account with us will allow you to:</p>
            <h4><p><ul style="list-style-type:disc">
                    <p>Login to our club computers...</p>
                    <p>Access club files and resources...</p>
                 <p>Sign in to the club room...</p>
                 <p>Webspace for your member website...</p>
                 <p>And much more!</p>
              </ul></p></h4>
        </div>
   

        
      </div>
    </div>
    Questions or comments.  Please contact <a href="mailto: <%= application.getInitParameter("webmaster") %>">
      webmaster</a>
  </body>
</html>
