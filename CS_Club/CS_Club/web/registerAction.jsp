<%-- 
    Document   : registerAction
    Created on : Oct 24, 2017, 6:31:17 PM
    Author     : kcrabtr1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
      .query table {
        /*border-style: solid;*/
        border-width: 2px;
        padding: 2px;
      }
      .query td {
        border-style: double;
      }
    </style>
  </head>
  <body>
    <%
      String first = request.getParameter("first");
      String last = request.getParameter("last");
      String email = request.getParameter("email");
      String password = request.getParameter("password");
      String usertype = request.getParameter("usertype");
      String phone = request.getParameter("phone");
      String sql = "insert into register (id, first, last, email, password, usertype, phone) "
        + "values (0, '" + first + "', '" + last + "', '" + email + "', '" + password + "', '"
        + usertype + "', '" + phone +  "')";
      String sql2 = "select * from register";
      DBConnect dbConnect = new DBConnect();
      String err = dbConnect.insertData(sql);
      if (err.equals("Closed"))
        response.sendRedirect("index.jsp");
      else 
          %>
      <script>alert("<%= err %>")</script>
  </body>
</html>