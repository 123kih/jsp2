<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h2>외부 파일2</h2>
<%
    String newVar2 = "백제 온조왕";
%>

<ul>
    <li>Page 영역 속성 : <%=pageContext.getAttribute("pAttr")%>
    </li>
    <li>request 영역 속성 : <%=request.getAttribute("rAttr")%>
    </li>
</ul>
</body>
</html>
