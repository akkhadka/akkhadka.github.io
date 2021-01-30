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
      <div> Thanks for placing your order.</div>
        <div> Order will be shipped to ${shippedto}.</div>
        <div>Your order details:</div>
        <table>
            <tr>
                <th>Quantity</th>
                <th>Item</th>
                <th>Price</th>
                <th>Subtotal</th>

            </tr>

            <c:forEach var="item" items="${order.lineItems}">
                <tr>
                    <td>${item.quantity}</td>
                    <td>${item.product.name}</td>
                    <td>${item.product.price}</td>
                    <td>${item.product.price * item.quantity}</td>

                </tr>


            </c:forEach>
            <tr>
                <td colspan="3" class="text-right">Total:</td>
                <td >${order.totalPrice}</td>
            </tr>
        </table>

    </section>
</div>
<%@include file="/WEB-INF/views/layout/footer.jsp" %>
</body>
</html>
