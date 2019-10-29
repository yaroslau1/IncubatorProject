<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <title>Login page</title>
    <style>
        input {
            width: 200px;
            height: 40px;
            float: initial;
        }

        .button {
            height: 30px;
            background-color: blue;
        }

        .form {
            margin-top: 20px;
            align-items: center;
            width: 200px;
            height: 100px;
            size: 200px;
        }

        .one {
            width: auto;
            height: auto;
        }
    </style>
</head>

<body>
<div align="center" class="one">
    <div class="form">
        <c:url var="loginUrl" value="/login"/>
        <form action="${loginUrl}" method="post">
            <c:if test="${param.error != null}">
                <div class="alert alert-danger">
                    <p>Invalid username and password.</p>
                </div>
            </c:if>
            <c:if test="${param.logout != null}">
                <div class="alert alert-success">
                    <p>You have been logged out successfully.</p>
                </div>
            </c:if>
            <div>
                <label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
                <input type="text" class="form-control" id="username" name="ssoId" placeholder="Логин" required>
            </div>
            <div>
                <label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Пароль" required>
            </div>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <div align="center">
                <input type="submit" class="button" value="Войти">
            </div>
        </form>
    </div>
</div>
</body>
</html>