<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>내장객체 - Request</title>
</head>
<body>
<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
    <ul>
        <li>데이터 전송방식 : <%=request.getMethod()%></li>
        <li>URL : <%=request.getRequestURI()%></li>
        <li>URI : <%=request.getRequestURL()%></li>
        <li>프로토콜 : <%=request.getProtocol()%></li>
        <li>서버명 : <%=request.getServerName()%></li>
        <li>서버 포트 : <%=request.getServerPort()%></li>
        <li>클라이언트 IP 주소 : <%=request.getRemoteAddr()%></li>
        <li>쿼리스트링 : <%=request.getQueryString()%></li>
        <li>전송된 값1 : <%=request.getParameter("eng")%></li>
        <li>전송된 값2 : <%=request.getParameter("han")%></li>
    </ul>
</body>
</html>
