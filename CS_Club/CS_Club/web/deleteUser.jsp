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
    
  </head>
  <body>
    <%
      String err = "";
      String uid = request.getParameter("user");
      DBConnect dbConnect = new DBConnect();
      String sql="DELETE FROM register WHERE id='"+uid+"'";
      String result = dbConnect.updateDB(sql);
      if (!result.equals("true")){
          err = result; 
      }else{
          response.sendRedirect("users.jsp");    
      }
         
          %>
      <script>alert("<%= err %>")</script>
  </body>
</html>