<%--
  Created by IntelliJ IDEA.
  User: arjun
  Date: 1/27/2021
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <% String name = request.getContextPath(); %>
    <style>
        * {
            margin: 0;
            padding: 0;
            font-size: 100%;
            line-height: 1;
            box-sizing: border-box;
        }

        h1 {
            font-size: 22px;
            margin: 8px
        }

        input[type=text], input[type=email], input[type=date], select, input[type=password], textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
            margin: 5px 0;
        }

        label {

            display: inline-block;
            width: 100%;

        }

        input[type=submit] {
            background-color: #2575D2;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;
        }

        input[type=submit]:hover {
            background-color: #3189ee;
        }


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

        .validator {
            position: fixed;
            bottom: 0;
            right: 0;
            width: 88px;
            opacity: 50%;

        }

        .thankyou {
            padding: 10px;
            background-color: #d0d0d0;
            margin: auto;
            width: 70%;
            border-radius: 12px;
            font-size: 1.2em;
        }


        .loginContainer {
            background-color: #d0d0d0;
            border-radius: 12px;
            padding: 15px;

        }
        .mainContainer{
            margin: auto;
            width: 400px;
            height: 100%;
            padding-top: 10%;

        }
        .error{
            color: red;
            text-align: center;
        }
    </style>
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
            <label for="userName">User Name:
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
</form>
</div>
</div>
</body>
</html>
