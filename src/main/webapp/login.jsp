<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
  <jsp:include page="menu.jsp" />
  <fmt:setLocale value='<%= request.getParameter("language") %>' />
  <fmt:bundle basename="bundle.message">
    <div class="jumbtron">
      <div class="container">
        <h1 class="display-3"><fmt:message key="login" /></h1>
      </div>
    </div>
    <div class="container" align="center">
      <div class="col-md-4 col-md-offset-4">
        <h3 class="form-signin-heading">Please sign in</h3>
        <%
          String error = request.getParameter("error");
          if(error != null) {
            out.println("<div class='alert alert-danger'>");
        %>
        <fmt:message key='error1' var="error1" />
        ${error1}
        <%
            out.println("</div>");
          }
        %>
        <form class="form-signin" action="j_security_check" method="post">
          <div class="form-group">
            <label for="inputUserName" class="sr-only">User Name</label>
            <input type="text" class="form-control" placeholder="ID" name="j_username" required autofocus>
          </div>
          <div class="form-group">
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" class="form-control" placeholder="Password" name="j_password" required>
          </div>
          <button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
        </form>
      </div>
    </div>
  </fmt:bundle>
</body>
</html>