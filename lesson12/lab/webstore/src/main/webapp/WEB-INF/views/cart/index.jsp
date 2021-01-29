<%--
  Created by IntelliJ IDEA.
  User: arjun
  Date: 1/29/2021
  Time: 7:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>WebStore-Cart</title>
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
            margin-top: 15px;
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
        .remove{
            background-color: #d9534f;
            border-color: #d9534f;
            color: white;
            padding: .25rem .5rem;
            font-size: .875rem;
            border-radius: .2rem;
            cursor: pointer;

        }
        .normal{
            background-color: #2575D2;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;

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
            margin: 8px 0;
        }
        .cart{
            text-align: right;

            display: inline-block;
            width: 49%;
        }
        .cart a{
            color:#fff;
            text-decoration: none;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {background-color:#f5f5f5;}

        .col-1 {
            width: 8.33%;
        }

        .col-2 {
            width: 16.66%;
        }

        .col-3 {
            width: 25%;
        }

        .col-4 {
            width: 33.33%;
        }

        .col-5 {
            width: 41.66%;
        }

        .col-6 {
            width: 50%;
        }

        .col-7 {
            width: 58.33%;
        }

        .col-8 {
            width: 66.66%;
        }

        .col-9 {
            width: 75%;
        }

        .col-10 {
            width: 83.33%;
        }

        .col-11 {
            width: 91.66%;
        }

        .col-12 {
            width: 100%;
        }

        [class*="col-"] {
            float: left;
            padding: 5px;

        }

        .row::after {
            content: "";
            clear: both;
            display: table;
        }
        .text-right{
            text-align: right !important;
        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/layout/header.jsp" %>
<div class="content">
    <!--nav-->
    <%@include file="/WEB-INF/views/layout/nav.jsp" %>
    <section>
        <h1>Your Cart</h1>
        <table>
            <tr>
                <th>Quantity</th>
                <th>Item</th>
                <th>Price</th>
                <th>Subtotal</th>
                <th></th>
            </tr>

        <c:forEach var="item" items="${cart.lineItems}">
                <tr>
                    <td>${item.quantity}</td>
                    <td>${item.product.name}</td>
                    <td>${item.product.price}</td>
                    <td>${item.product.price * item.quantity}</td>
                    <td><input class="remove" type="submit" value="Remove"></td>
                </tr>


        </c:forEach>
            <tr>
                <td colspan="4" class="text-right">Total:</td>
                <td >${cart.totalPrice}</td>
            </tr>
        </table>

    </section>
    <section>
        <div class="row">
            <div class="col-6">

            </div>

            <div class="col-6">
                <input class="normal" type="submit" value="Continue Shopping">
                <input class="normal" type="submit" value="Checkout">
            </div>
        </div>
    </section>
</div>
<%@include file="/WEB-INF/views/layout/footer.jsp" %>
</body>
</html>
