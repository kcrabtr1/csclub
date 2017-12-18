<%-- 
    Document   : loginAction
    Created on : Oct 24, 2017, 11:59:08 AM
    Author     : kevincrabtree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import = "myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <%
      String email = request.getParameter("email");
      String password = request.getParameter("password");
      String sql = "select first, last, email, password, usertype, phone from register where email = '" + email + "'";
              
       DBConnect dbConnect = new DBConnect();
       String values[] = dbConnect.retrieveRow(sql);
       
        if (values[0].equals("error")) {
            out.print(values[1]);
            response.sendRedirect("index.jsp");
        } else if (values[3].equals(password)) {
            System.out.println("password correct");
            //Password equal
            session.setAttribute("fname", values[0]);
            session.setAttribute("lname", values[1]);
            session.setAttribute("email", values[2]);
            session.setAttribute("usertype", values[4]);
            session.setAttribute("phone", values[5]);
            if (values[4].equals("Admin")){
                //Admin Session
                 System.out.println("you are admin");
                session.setAttribute("logged", "admin");
                response.sendRedirect("admin.jsp");    
            }else{
                //Memeber Session
                 System.out.println("you are not admin");
               session.setAttribute("logged", "member");
                response.sendRedirect("welcome.jsp"); 
            }
            
        }else{
            //Password not equal
            response.sendRedirect("index.jsp");
        }
          
      
      
    %>
    </body>
</html>
