<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Hello World</title>
  </head>
  <body>
  <%@include file="header.jsp"%>
    <h1>Hello World from Servlets demo</h1>
  <h2>
    In this session, we will learn JSP - Java Server Pages
  </h2>
  <h3>Display the current Date: </h3>

  <%
       boolean flag = true;
       out.write("The value of flag is "+ flag);
       out.write(new java.util.Date().toString());
  %>

  <%@include file="footer.jsp"%>
  </body>
</html>