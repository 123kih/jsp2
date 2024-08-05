<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<%--변수선언--%>
<c:set var="scopeVar" value="PageValue"></c:set>
<c:set var="scopeVar" value="Req Value" scope="request"></c:set>
<c:set var="scopeVar" value="Session Value" scope="session"></c:set>
<c:set var="scopeVar" value="App Value" scope="application"></c:set>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL Remove</title>
</head>
<body>
    <h2>출력</h2>
    <ul>
        <li>scopeVar : ${scopeVar}</li>
        <li>req scopeVar : ${requestScope.scopeVar}</li>
        <li>ses scopeVar : ${sessionScope.scopeVar}</li>
        <li>app scopeVar : ${applicationScope.scopeVar}</li>
    </ul>

    <h2>session 영역 삭제</h2> <%--session 영역만 삭제--%>
    <c:remove var="scopeVar" scope="session"></c:remove>
    <ul>
        <li>scopeVar : ${scopeVar}</li>
        <li>req scopeVar : ${requestScope.scopeVar}</li>
        <li>ses scopeVar : ${sessionScope.scopeVar}</li>
        <li>app scopeVar : ${applicationScope.scopeVar}</li>
    </ul>


    <h2>session 영역지정없이 삭제</h2> <%--전체 영역 삭제--%>
    <c:remove var="scopeVar"></c:remove>
    <ul>
        <li>scopeVar : ${scopeVar}</li>
        <li>req scopeVar : ${requestScope.scopeVar}</li>
        <li>ses scopeVar : ${sessionScope.scopeVar}</li>
        <li>app scopeVar : ${applicationScope.scopeVar}</li>
    </ul>
</body>
</html>
