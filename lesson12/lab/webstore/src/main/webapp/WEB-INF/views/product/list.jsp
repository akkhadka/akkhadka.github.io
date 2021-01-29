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
    <style>
        * {
            margin: 0;
            padding: 0;
            font-size: 100%;
            line-height: 1;
            box-sizing: border-box;
        }

        .topnav {
            background: #292b2c;
            padding: .5rem 1rem;
        }

        .navbar-brand {
            color: #fff;
            padding-top: .25rem;
            padding-bottom: .25rem;
            font-size: 1.25rem;
            display: inline-block;
            width: 50%;
        }

        nav {
            float: left;
            width: 20%;

        }

        section {
            margin-left: 20.50%;


        }

        footer {

        }

        nav > ul {
            list-style-type: none;
            margin: 0;
            padding: 0;

            background-color: #f1f1f1;
        }

        nav li a {
            display: block;
            color: #000;
            padding: 8px 16px;
            text-decoration: none;
        }

        /* Change the link color on hover */
        nav li a:hover {
            background-color: #555;
            color: white;
        }

        .product {
            padding: 15px;
        }

        .product > div {
            padding: 12px;
        }

        .product input[type='submit'] {
            color: #fff;
            background-color: #5cb85c;
            border-color: #5cb85c;
            float: right;
            padding: .25rem .5rem;
            font-size: .875rem;
            border-radius: .2rem;
        }

        .product .price {
            float: right;
            display: inline-block;
            padding: .25em .4em;
            font-size: 1.1em;
            font-weight: 700;
            line-height: 1;
            color: #fff;
            text-align: center;
            white-space: nowrap;
            vertical-align: baseline;
            background-color: #0275d8;
            padding-right: .6em;
            padding-left: .6em;
            border-radius: 10rem;
        }

        .bg-faded {
            background-color: #f7f7f7;
        }

        .name {
            display: inline-block;
        }

        h1 {
            font-size: 2em;
        }
        .cart{
            text-align: right;
            color:#fff;
            display: inline-block;
            width: 49%;
        }
        .cart a{
            color:#fff;
            text-decoration: none;
        }
    </style>
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
