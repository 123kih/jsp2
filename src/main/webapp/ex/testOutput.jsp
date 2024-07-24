<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%
    String userid=request.getParameter("userid");
    String userpw=request.getParameter("userpw");
    String userpw_re=request.getParameter("userpw_re");
    String name=request.getParameter("name");
    String hp=request.getParameter("hp");
    String email=request.getParameter("email");
    String gender=request.getParameter("gender");
    String[] hobby=request.getParameterValues("hobby");

%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <p>아이디 : <%=userid%></p>
</body>
</html>
