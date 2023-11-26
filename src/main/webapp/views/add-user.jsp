<!DOCTYPE HTML>
<html>
    <jsp:include page="template.jsp">
        <jsp:param name="title" value="Submit"/>
    </jsp:include>
    <body>
    <form method="post">
    <h1>Submit page!</h1>
    <label>Login:
        <input type="text" name="login">
    </label>
    <br/>
    <label>Password:
        <input type="password" name="pass">
    </label>
    <br/>
    <button>Submit</button>
    <br/>
    <p>User submit status: <%=request.getAttribute("submitFlag")%></p>
        <br/>
        <a href="login-user">Login user</a>
    </form>
    </body>
</html>