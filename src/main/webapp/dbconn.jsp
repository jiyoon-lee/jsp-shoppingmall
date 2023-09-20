<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%
  Connection conn = null;

  try {
    String url = "jdbc:oracle:thin:@localhost:1521/xe";
    String user = "c##KosaProject2";
    String password = "1234";
   
    Class.forName("oracle.jdbc.OracleDriver");
    conn = DriverManager.getConnection(url, user,password);
    
  } catch (ClassNotFoundException e) {
    e.printStackTrace(); 
  } catch (SQLException e) {
    e.printStackTrace(); 
    out.println("데이터베이스 연결이 실패했습니다.<br>");
    out.println("SQLException: " + e.getMessage());
  } finally {
    if(conn != null) {
      try {
        conn.close();
        out.println("연결 끊기");
      } catch(SQLException e) {}
    }
  }


%>