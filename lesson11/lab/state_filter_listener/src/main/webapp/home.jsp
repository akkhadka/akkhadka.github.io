<%--
  Created by IntelliJ IDEA.
  User: arjun
  Date: 1/27/2021
  Time: 6:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            font-size: 100%;
            line-height: 1;
            box-sizing: border-box;
        }
        .topbar{
            height: 50px;
            background-color: #d0d0d0;
            color: white;
            position: relative;
            padding: 15px 0;
            text-align: center;
        }
        .logout{

            position: absolute;
            right: 5px;


        }
        .center{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 200px;
        }
        h1{
            font-size: 2em;
        }

    </style>
</head>
<body>
<div class="topbar">
    <form method="post" action="/logout">
<%--        <a class="logout" href="/logout">Logout</a>--%>
        <input class="logout" type="submit" value="logout">
    </form>


</div>

<div class="center">
    <%String name = (String) request.getAttribute("name");%>
    <%String amount = (String) request.getAttribute("promo");%>
    <h1>Welcome, <em> <%=name%> </em>.You have a promo of $<%=amount%></h1>
</div>
</body>
</html>
