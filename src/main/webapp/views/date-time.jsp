<html>
<jsp:include page="../templates/head.jsp">
  <jsp:param name="title" value="Date Time"/>
</jsp:include>
<body>
<h1>Current server time: <%=request.getAttribute("date")%></h1>
</body>
</html>
