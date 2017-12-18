/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myBeans;

import java.sql.*;

/**
 *
 * @author kcrabtr1
 */
public class DBConnect {

  // driver and connection string variables
  private final String driver = "com.mysql.jdbc.Driver";
  private final String url = "jdbc:mysql://localhost:3306/csclub";
  private final String user = "mahadev";
  private final String password = "mahadev";

  // JDBC variables and methods
  private Connection conn = null;
  private Statement stm = null;
  private PreparedStatement pstm = null;
  private ResultSet rst = null;
  private ResultSetMetaData rsmd = null;

  // The two private methods below are used to open and close DB
  private String open() {
    String message = "Opened";
    try {
      Class.forName(driver); // load driver
      conn = DriverManager.getConnection(url, user, password);
      stm = conn.createStatement();
    } catch (Exception e) {
      message = e.getMessage();
    }
    return message;
  }

  private String close() {
    String message = "Closed";
    try {
      stm.close();
      conn.close();
    } catch (Exception e) {
      message = e.getMessage();
    }
    return message;
  }

  // Business logic: Method to insert data
  public String insertData(String sql) {
    String message = open();
    if (message.equals("Opened")) {
      try {
        stm.executeUpdate(sql);
        message = close();
      } catch (Exception e) {
        message = e.getMessage();
      }
    }
    return message;
  }
  
  public String updateDB(String sql) {
       String message = open();
        if (message.equals("Opened")) {
            try {
                stm.executeUpdate(sql);
                stm.close();
                conn.close();
                return "true";
            } catch (Exception e) {
                return e.getMessage();
            }
        } else {
            return "false";
        }
    }
  
  public String getValue(String sql){
      String message = open();
        if (message.equals("Opened")) {
            try{
                rst = stm.executeQuery(sql);
                rst.next();
                String value = rst.getString(1);
                rst.close();
                stm.close();
                return value;
            }catch(Exception e){
                return e.getMessage();
            }
            
        }
        return "error";
    }

  // Business logic: Method to display query as html table
  public String htmlTable(String sql, String style) {
    String result = "<div><table class = '" + style + "'>\n";
    String message = open();
    String uid="";
    Boolean isadmin=false;
    if (message.equals("Opened")) {
      try {
        rst = stm.executeQuery(sql);
        rsmd = rst.getMetaData();
        int count = rsmd.getColumnCount();
        // create column headings
        result += "<thead><tr>\n";
        for (int i = 0; i < count; i++) {
          result += "<th>" + rsmd.getColumnName(i + 1) + "</th>\n";
        }
        result += "</tr></thead>\n";
        // create data rows
        result += "<tbody>\n";
        while (rst.next()) {
          result += "<tr>\n";
          for (int i = 0; i < count; i++) {
            if (i==0){
               uid = rst.getString(i + 1);
            }
            if (i==5){
                if ((rst.getString(i + 1)).equals("Admin")){
                    isadmin=true;
                } 
            }
            result += "<td>" + rst.getString(i + 1) + "</td>\n";
          }
          if(isadmin){
              result +="<td><a href='makeAdmin.jsp?user="+uid+"&usertype=member'>Make Member</a></td>\n";
              isadmin=false;
          }else{
              result +="<td><a href='makeAdmin.jsp?user="+uid+"&usertype=admin'>Make Admin</a></td>\n";
          }
          
          result +="<td><a href='deleteUser.jsp?user="+uid+"'>Delete</a></td>\n";
          result += "</tr>\n";
        }
        result += "</tbody></table></div>\n";
        close();
        return result;
      } catch (Exception e) {
        close();
        return e.getMessage();
      }
    } else {
      return message;
    }
  }

  // temporary password verification method
  public boolean validatePassword(String sql) {
    String message = open();
    int count = 0;
    if (message.equals("Opened")) {
      try {
        rst = stm.executeQuery(sql);
        while (rst.next()) {
          count++;
        }
        message = close();
      } catch (Exception e) {
        message = e.getMessage();
      }
    }
    if (count == 0) {
      return false;
    } else {
      return true;
    }
  }
  
  public String[] retrieveRow(String sql) {
        String message = open();
        if (message.equals("Opened")) {
            try {
                rst = stm.executeQuery(sql);
                rst.next();
                return new String[]{rst.getString(1), rst.getString(2), rst.getString(3), rst.getString(4), rst.getString(5), rst.getString(6)};

            } catch (Exception e) {
                return new String[]{e.getMessage()};
            }
        }

        return new String[]{"error"};
    }

  // Business logic: Method to verify password. Avoids SQL injection
  public String isPasswordValid(String sql, String user, String password) {
    String result = "no";
    String message = open();
    if (message.equals("Opened")) {
      try {
        pstm = conn.prepareStatement(sql);
        pstm.setString(1, user);
        pstm.setString(2, password);
        rst = pstm.executeQuery();
        if (rst.next()) {
          result = "yes";
        }
        close();
        return result;
      } catch (Exception e) {
        return e.getMessage();
      }
    } else {
      return message;
    }
  }
}
