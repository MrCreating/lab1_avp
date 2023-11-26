<html>
  <jsp:include page="../templates/head.jsp">
    <jsp:param name="title" value="Date Time"/>
  </jsp:include>
  <body>
    <style>
      body {
        background-color: #eeeeee !important;
      }
    </style>
    <div style="padding: 20px">
      <div class="card" style="padding: 20px">
        <h3>Current server time: <%=request.getAttribute("date")%></h3>
        <a href="login-user">Log in to another user</a>
      </div>
    </div>
  </body>
</html>
