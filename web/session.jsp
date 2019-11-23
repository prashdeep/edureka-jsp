<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: classpath
  Date: 23-Nov-19
  Time: 10:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>

<html>
<head>
    <title>Session Example</title>
</head>
<body>

 <h1>Retreving the Details from Session</h1>
 <%-- JSP comments    --%>
 <%-- JSP scriptlets    --%>
 <% %>
 <%-- JSP expressions    --%>
 <%= "expression" %>
 <%-- JSP directives    --%>


 <%

    out.write((String) session.getAttribute("sessionAttribute"));
    out.write(new Date().toString());
    %>

<h1>The value using expression language is  ${requestScope.get("sessoinAttribute")}</h1>





</body>
</html>
