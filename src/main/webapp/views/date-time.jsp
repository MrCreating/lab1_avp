<html>
<jsp:include page="template.jsp">
  <jsp:param name="title" value="Date Time"/>
</jsp:include>
<body>
<h1>Current server time: <%=request.getAttribute("date")%></h1>
</body>
</html>
