<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./welcome.jsp">Home</a>
            <%
              if(request.isUserInRole("admin")) {
                out.println(request.getRemoteUser());
              }
            %>
            <jsp:include page="selectLan.jsp" />
		</div>
        <div>
          <ul class="navbar-nav mr-auto">
            <li class="nav-itme">
              <a class="nav-link" href="./products.jsp">상품 목록</a>
            </li>
          </ul>
        </div>
	</div>
</nav>