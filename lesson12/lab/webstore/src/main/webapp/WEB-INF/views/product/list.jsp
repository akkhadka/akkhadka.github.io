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
        <div class="products">
            <c:forEach var="product" items="${productList.products}">
                <form method="post" action="/cart">
                    <div class="product">
                        <div class="bg-faded">
                            <input type="hidden" name="productId" value="${product.productId}"/>
                            <h1 class="name"> ${product.name}</h1>
                            <span class="price">$${product.price}</span>
                        </div>
                        <div>
                            <span class="description">${product.description}</span>
                            <input type="submit" value="Add to Cart">
                        </div>
                    </div>
                </form>
            </c:forEach>
        </div>

    </section>
</div>
<%@include file="/WEB-INF/views/layout/footer.jsp" %>
</body>
</html>
