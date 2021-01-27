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
  <link href="support.css" rel="stylesheet" type="text/css">
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
