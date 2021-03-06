<%--
  Created by IntelliJ IDEA.
  User: arjun
  Date: 1/27/2021
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <link href="<c:url value='/resources/styles/webstore.css'/>" rel="stylesheet"/>

</head>
<body>
<%
    String error="";
    if(request.getSession().getAttribute("error")!=null) error=(String) request.getSession().getAttribute("error");
    String remember =request.getAttribute("remember")!=null?(String) request.getAttribute("remember"):null;
%>
<div class="mainContainer">

    <div class="loginContainer">
        <form method="post">
            <div class="row error">

                <%=error%>

            </div>
            <div class="row">


                <div class="col-12">
                    <label for="userName">User Name:
                        <input id="username" value='<%=(remember!=null? remember:"")%>' name="username" type="text">
                    </label>
                </div>
            </div>
            <div class="row">


                <div class="col-12">
                    <label for="userName">Password:
                        <input id="password" name="password" type="password">
                    </label>
                </div>
            </div>
            <div class="row">


                <div class="col-12">
                    <label >
                        <input id="remember" name="remember" type="checkbox" <%=(remember!=null?"checked":"")%>>
                        remember me
                    </label>
                </div>
            </div>
            <div class="row">


                <div class="col-12">
                    <input type="submit">
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <a href="/register">Sign up</a>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
