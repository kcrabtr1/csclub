<%-- 
    Document   : logoutAction
    Created on : Nov 16, 2017, 12:43:17 PM
    Author     : kevincrabtree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
      session.setAttribute("logged", "");
      response.sendRedirect("index.jsp");
    %>
    </body>
</html>
