<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<h2>Hello World!</h2>
<ul>
    <li><c:out value="${'Knock, knock, anybody there!'}"/></li>
    <li><a href="<c:url value="/hello"/>">Test Hello Servlet</a></li>
</ul>
</body>
</html>