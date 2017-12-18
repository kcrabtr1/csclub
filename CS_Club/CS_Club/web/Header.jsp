<%-- 
    Document   : Header
    Created on : Oct 24, 2017, 11:43:21 AM
    Author     : kevincrabtree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>CS Club</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
    <script  type="text/javascript" src="my.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="jumbotron-fluid w3-gray">
        <img src="images/Cs-club-logo.png" width="800" height="150" alt="CSLogo"/>
      </div>

      <div class="w3-bar w3-teal">
        <a href="welcome.jsp" class="w3-bar-item w3-button">Home</a>
        <a href="downloads.jsp" class="w3-bar-item w3-button" id="Downloads">Downloads</a>
        <a href="managedownloads.jsp" class="w3-bar-item w3-button" id="Manage">Manage Downloads</a>
        <a href="users.jsp" class="w3-bar-item w3-button" id="Users">Users</a>
        <a href="newsfeed.jsp" class="w3-bar-item w3-button" id="News">News Feed</a>
        <a href="contact.jsp" class="w3-bar-item w3-button" id="Contact">Contact</a>
        <a href="register.jsp" class="w3-bar-item w3-button" id="Register">Register</a>
        <div class="w3-dropdown-hover w3-button" id="About">About
          <div class="w3-dropdown-content w3-bar-block w3-border">
            <a href="location.jsp" class="w3-bar-item w3-button" id="About">Location</a>
            
          </div>
        </div>
        
        <% // session control
          String logged = (String)session.getAttribute("logged");
          String fname = (String)session.getAttribute("fname");
        %>  

        <div id="login" class="w3-right-align">
          <form class="form-inline" name="login" action="loginAction.jsp" method="post">
            <div class="form-group">
              <label for="email">Email:</label>
              <input type="text" class="form-control" required placeholder="Enter email" name="email">
            </div>
            <div class="form-group">
              <label for="password">Password:</label>
              <input type="password" class="form-control" required placeholder="Enter password" name="password">
            </div>
            <button type="submit" class="btn btn-default">Login</button>
          </form>
        </div>

        <div id="logout" class="w3-right-align">
          <form class="form-inline" name="logout" action="logoutAction.jsp" method="post">
            <div class="form-group">
              <label for="welcome">Welcome:</label>
              <%= fname %>
            </div>
            <button type="submit" class="btn btn-default">Logout</button>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
