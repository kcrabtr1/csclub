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
      <div class="row">
        <h4 class="col-sm-4">This is the computer science club for Fitchburg State University
            Students. 
        </h4>

        <form name="register" action="registerAction.jsp" method="get">
          <div class="col-sm-4"><br>
            <p>      
              <label class="w3-text-teal"><b>First Name</b></label>
              <input class="w3-input w3-border" name="first" type="text" required></p>
            <p>      
              <label class="w3-text-teal"><b>Last Name</b></label>
              <input class="w3-input w3-border" name="last" type="text" required></p>
            <p>      
              <label class="w3-text-teal"><b>Email</b></label>
              <input class="w3-input w3-border" name="email" type="email" required></p>
            <p>      
              <label class="w3-text-teal"><b>Confirm Email</b></label>
              <input class="w3-input w3-border" name="email2" id = "email2" type="email" 
                     required onInput="validateEmail()"></p>
            <p>      
              <label class="w3-text-teal"><b>Password</b></label>
              <input class="w3-input w3-border" name="password" type="password" required></p>
            <p>      
              <label class="w3-text-teal"><b>Confirm Password</b></label>
              <input class="w3-input w3-border" name="password2" id = "password2" type="password" 
                     required onInput="validatePassword()"></p>
          </div>
          <div class="col-sm-4"><br>
            <p>      
              <label class="w3-text-teal"><b>User Type</b></label>
              <select class="w3-select w3-border" name="usertype" required>
                <option value="" disabled selected>Choose one</option>
                <option value="member">Member</option>
              </select>             
            <p>      
              <label class="w3-text-teal"><b>Phone Number</b></label>
              <input class="w3-input w3-border" name="phone" type="tel" ></p>
            <p>      
              <button class="w3-btn w3-teal">Register</button></p>
          </div>
        </form>
      </div>
    </div>
    Questions or comments.  Please contact <a href="mailto: <%= application.getInitParameter("webmaster") %>">
      webmaster</a>
  </body>
</html>
