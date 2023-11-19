<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-10-19
  Time: 오후 4:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
String str1 = "JSP";
String str2 = "하이!";
%>
<html>
<head>
    <title>HEllo jsp</title>
</head>
<body>
<h2> 처음 만다는 <%= str1%></h2>
<p>
    <% out.println(str1 + str2 + "입니다. ");
    %>
</p>
</body>
</html>
