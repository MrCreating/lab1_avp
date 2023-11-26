<!DOCTYPE HTML>
<html>
    <jsp:include page="../templates/head.jsp">
        <jsp:param name="title" value="Login"/>
    </jsp:include>
    <body>
        <style>
            body {
                background-color: #eeeeee !important;
            }
        </style>
        <form method="post" style="padding: 20px">
            <h3 class="center">LogIn</h3>
            <div style="padding: 20px" class="card">
                <div class="input-field">
                    <input id="login" type="text" name="login">
                    <label for="login">Login</label>
                </div>
                <div class="input-field">
                    <input id="pass" type="password" name="pass">
                    <label for="pass">Password</label>
                </div>
                <button type="submit" class="btn btn-large center">login</button>
            </div>
            <p class="center">User valid status: <%=request.getAttribute("isLogPassValid")%></p>
        </form>
    </body>
</html>
