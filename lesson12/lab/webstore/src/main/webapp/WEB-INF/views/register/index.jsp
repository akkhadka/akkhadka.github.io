<%--
  Created by IntelliJ IDEA.
  User: arjun
  Date: 1/29/2021
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Register</title>
    <link href="<c:url value='/resources/styles/webstore.css'/>" rel="stylesheet"/>
    <script  src="/resources/js/signup.js" type="text/javascript"></script>
</head>
<body>
<%@include file="/WEB-INF/views/layout/header.jsp" %>
<%@include file="/WEB-INF/views/layout/nav.jsp" %>
<section>


<div class="mainContainer">

    <div class="loginContainer">
        <form method="post" action="/register" id="frmSignup">

            <div class="row">
                <div class="col-12">
                    <label for="userName">User Name:
                        <input id="username"  name="username" type="text" required>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <label for="userName">Password:
                        <input id="password" name="password" type="password" required>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <label for="userName">Confirm Password:
                        <input id="confirmPassword" name="confirmPassword" type="password" required>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <label for="name">Name:
                        <input id="name" name="name" type="text">
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <input type="submit" value="Sign up">
                </div>
            </div>

        </form>
    </div>
</div>
</section>
</body>
</html>
