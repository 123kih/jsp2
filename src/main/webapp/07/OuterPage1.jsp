<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <h2>외부 파일1</h2>
<%
  String newVar1="고구려 세운 동명왕";
%>

<ul>
  <li>Page 영역 속성 : <%=pageContext.getAttribute("pAttr")%></li>
  <li>request 영역 속성 : <%=pageContext.getAttribute("rAttr")%></li>
</ul>
</body>
</html>
