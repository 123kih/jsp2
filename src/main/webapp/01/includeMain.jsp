<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="includeFile.jsp"%>
<html>
<head>
    <title>include 제시어</title>
</head>
<body>
    <%
        out.println("오늘 날짜 : "+ today);
        out.println("<br/>");
        out.println("내일 날짜 : "+ tomorrow);
    %>
</body>
</html>
