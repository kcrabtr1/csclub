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
      String sql = "";
      String uid = request.getParameter("user");
      String utype = request.getParameter("usertype");
      DBConnect dbConnect = new DBConnect();
      
      if (utype.equals("admin")){
         sql ="UPDATE register SET usertype='Admin' WHERE id='"+uid+"'";
      }else{
          sql="UPDATE register SET usertype='member' WHERE id='"+uid+"'";
      }
      
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