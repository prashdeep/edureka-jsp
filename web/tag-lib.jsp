<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: classpath
  Date: 23-Nov-19
  Time: 10:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>Tag library examples</h1>
<c:forEach begin="1" end="10">
    <c:out value="${index}" />
</c:forEach>

<c:if test="${requestScope.get('user')}" >
    <c:out value="${requestScope.get('user')}" />
</c:if>
<c:if test="${!requestScope.get('user')}" >
    <h2>User is not present</h2>
</c:if>

<c:choose>
    <c:if test=""></c:if>
    <c:if test=""></c:if>
    <c:otherwise></c:otherwise>
</c:choose>



</body>
</html>
