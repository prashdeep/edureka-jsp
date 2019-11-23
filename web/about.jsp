<%--
   Anything that you write here will not be parsed by the jsp compiler
--%>
<html>
<head>
    <title>About Page</title>
</head>
<body>
<jsp:include page="header.jsp"/>

    <h1>About Page</h1>
    <div>
        <span>This is an About page!!!!</span>
    </div>

    <h1>Today's date is

        <%!
            //Declaration of variables and methods goes here
            int i = 56;
            boolean flag = true;

            public int printValue(){return i;}
        %>
    <%= "The value of i is "+printValue() %>
    <%= new java.util.Date().toString() %>
    <%= "The flag value is "+flag %>


        <% String userDetails = (String)session.getAttribute("sessionAttribute");
           out.write("The username is "+userDetails);
        %>
        <%
            if (!flag){
                response.sendRedirect("http://www.google.com");
            }
        %>

        <h2>This is printing the request scope value::</h2>
        <%=
            pageContext.getAttribute("userdetails", PageContext.REQUEST_SCOPE)
        %>
        <h2>This is printing the session scope value::</h2>
        <%=
            pageContext.getAttribute("sessionAttribute", PageContext.SESSION_SCOPE)
        %>

    </h1>

<h2> Displaying the Cookies</h2>
<%
    Cookie[] cookies = request.getCookies();

    for (Cookie cookie : cookies ) {
        out.write("Cookie name : "+cookie.getName());
        out.write("Cookie value : "+cookie.getValue());
    }
%>

<!--Demonstrating Setter and Getter using jsp usebean tag -->
<jsp:useBean id="user" class="com.edureka.servlets.model.User">
    <jsp:setProperty name="user" property="name" value="Test-User"/>
    <jsp:setProperty name="user" property="id" value="34" />
</jsp:useBean>


The name of the User is : <jsp:getProperty name="user" property="name" />

<jsp:include page="footer.jsp" />
</body>
</html>
