<%--
  Created by IntelliJ IDEA.
  User: 김예린
  Date: 2023-11-29
  Time: 오후 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("pageInteger", 1000);
    pageContext.setAttribute("pageString", "페이지 영역의 문자열");
    pageContext.setAttribute("pagePerson", new Person("한석",99));
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>page영역의 속성값 읽기</h2>
<%
    int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
    String pString = pageContext.getAttribute("pageString").toString();
    Person pPerson= (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
    <li>Integer 객체 : <%= pInteger %></li>
    <li>String 객체 : <%= pString %></li>
    <li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %> </li>
</ul>

<h2>include 된 파일에서 page 영역 읽어오기</h2>
<%@ include file="PageInclude.jsp" %>

<h2>페이지 이동 후 page영역 읽어오기</h2>
<a href="PageLocation.jsp">바로가기</a>
</body>
</html>
