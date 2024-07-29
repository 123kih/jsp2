<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%@ include file="forward_data.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <h4>구구단 출력하기</h4>
    <%
        RequestDispatcher rd=request.getRequestDispatcher("forward_data.jsp?num=5");
        rd.forward(request,response);
    %>
</body>
</html>
