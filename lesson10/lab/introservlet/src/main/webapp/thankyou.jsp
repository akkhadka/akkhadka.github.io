<%--
  Created by IntelliJ IDEA.
  User: arjun
  Date: 1/26/2021
  Time: 4:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thank you</title>
    <link href="support.css" rel="stylesheet" type="text/css">
</head>
<body>

    <% String name = (String) request.getAttribute("name"); %>
    <% String email = (String) request.getAttribute("email"); %>
    <% String supportEmail =(String)  request.getAttribute("support_email"); %>
    <% String supportTicket =(String)  request.getAttribute("support_ticket"); %>
    <div class="center">
    <span class="thankyou">
    Thank you!<em> <%=name%></em> for contacting us. You should receive reply from us with in 24 hrs in your email address<em> <%=email%></em>. Let us know in our support email <em><%=supportEmail%></em> if
    you don’t receive reply within 24 hrs. Please be sure to attach your reference <strong><em><%=supportTicket%></em></strong> in your email."
    </span>
    </div>
</body>
</html>
