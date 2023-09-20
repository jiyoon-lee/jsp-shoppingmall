<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
  <jsp:include page="menu.jsp" />
  
  <div class="jumbotron">
    <div class="container">
      <h1 class="display-3">상품 목록</h1>
    </div>
  </div>
  
  <%
    ProductRepository dao = ProductRepository.getInstance();
    ArrayList<Product> listOfProducts = dao.getAllProducts();
  %>
  
  <div class="container">
    <div class="row" align="center">
      <%@ include file="dbconn.jsp" %>
      <%
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from product";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        while(rs.next()) {
      %>
      <div class="col-md-4">
        <img src="./resources/upload/<%=rs.getString("p_fileName") %>" style="width: 100%" >
        <h3><%=rs.getString("p_name") %></h3>
        <p><%=rs.getString("p_description") %><p>
        <p><%=rs.getString("p_UnitPrice") %>원<p>
        <p>
          <a 
            href="product.jsp?id=<%=rs.getString("p_id") %>"
            class="btn btn-secondary"
          > 상세 정보 &raquo;</a>
        </p>
      </div>
      <%
        }
        
        if(rs != null)rs.close();
        if(pstmt != null) pstmt.close();
        if(conn != null) conn.close();
     
      %>
    </div>
    <hr />
  </div>
  <jsp:include page="footer.jsp" />
</body>
</html>