<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="users" scope="request" type="java.util.Map<java.lang.String, ru.stankin.uits.lec3.database.User>"/>

<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
    <jsp:include page="../templates/head.jsp">
        <jsp:param name="title" value="Submit"/>
    </jsp:include>
    <body>
        <style>
            body {
                background-color: #eeeeee !important;
            }
        </style>
        <nav>
            <div class="nav-wrapper">
                <a class="brand-logo left">Admin panel</a>
                <ul id="nav-mobile" class="right">
                    <li><a href="login-user">Login user</a></li>
                </ul>
            </div>
        </nav>
        <div style="padding: 20px">
            <ul class="collapsible">
                <li>
                    <div class="collapsible-header">Add new user</div>
                    <div class="collapsible-body" style="background-color: white">
                        <form method="post">
                            <div>
                                <div class="input-field">
                                    <input id="login" type="text" name="login">
                                    <label for="login">Login</label>
                                </div>
                                <div class="input-field">
                                    <input id="pass" type="password" name="pass">
                                    <label for="pass">Password</label>
                                </div>
                                <button type="submit" class="btn btn-large center">Add user</button>
                            </div>
                            <p>User submit status: <%=request.getAttribute("submitFlag")%></p>
                            <br/>
                        </form>
                    </div>
                </li>
            </ul>

            <div style="padding: 20px" class="card">
                Users list:
                <table class="striped centered">
                    <thead>
                    <tr>
                        <th>Login</th>
                        <th>Password</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.value.login}</td>
                            <td>${user.value.pass}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>