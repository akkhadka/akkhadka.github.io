<%--
  Created by IntelliJ IDEA.
  User: arjun
  Date: 1/26/2021
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CSTech Support</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            font-size: 100%;
            line-height: 1;
            box-sizing: border-box;
        }
        h1{
            font-size: 22px;
            margin:8px
        }
        input[type=text], input[type=email],input[type=date],select, textarea {
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

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;

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
        .validator{
            position: fixed;
            bottom:0;
            right:0;
            width: 88px;
            opacity: 50%;

        }

    </style>
</head>
<body>
<div class="container">
    <h1>CStech support</h1>
    <form method="post">
        <div class="row">
            <div class="col-6">
                <label>
                     Name
                    <input type="text" id="name" name="name" required  />
                </label>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <label>
                    Email
                    <input type="text" name="email" required />
                </label>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <label>
                    Problem
                    <input type="text" name="problem" required />
                </label>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <label>
                   Problem description
                    <textarea  name="suffix" rows="20" >

                    </textarea>
                </label>
            </div>
        </div>

        <div class="row">
            <div class="col-6">
                <input id="btn" type="submit" value="help">
            </div>
        </div>
    </form>
    <div class="validator">

        <a href="https://validator.w3.org/check/referer" referrerpolicy="no-referrer-when-downgrade">
            <img src="/images/w3c-html.png" alt="Validate" />
        </a>

        <a id="htmlValidator" href="https://jigsaw.w3.org/css-validator/check/referer"
           referrerpolicy="no-referrer-when-downgrade">
            <img src="/images/w3c-css.png" alt="Validate" />
        </a>

    </div>

</div>
</body>
</html>
