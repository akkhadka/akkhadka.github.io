<%--
  Created by IntelliJ IDEA.
  User: arjun
  Date: 1/28/2021
  Time: 2:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Product List</title>
    <link href="<c:url value='/resources/styles/webstore.css'/>" rel="stylesheet"/>
</head>
<body>
<%@include file="/WEB-INF/views/layout/header.jsp" %>
<div class="content">
    <!--nav-->
    <%@include file="/WEB-INF/views/layout/nav.jsp" %>
    <section>
        <form method="post" action="/checkout">
            <h1>Check out now</h1>
            <h2>Ship to</h2>
            <div class="row">
                <div class="col-3">
                    <label>
                        Name:
                        <input type="text" name="name">
                    </label>
                </div>
            </div>
            <h2>Address</h2>
            <div class="row">
                <div class="col-3">
                    <label>
                        Line 1:
                        <input type="text" name="line1">
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    <label>
                        Country:
                        <input type="text" name="country">
                    </label>
                </div>
            </div>
            <div class="col-2">


                <input class="normal" type="submit" value="Complete Order">

            </div>
        </form>
    </section>
</div>
<%@include file="/WEB-INF/views/layout/footer.jsp" %>
</body>
</html>
