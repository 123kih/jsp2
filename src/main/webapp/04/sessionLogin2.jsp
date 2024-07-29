<%@ page import="com.example.CookieManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Session - 아이디 저장하기</title>
</head>
<body>
<%
    String user_id=(String) session.getAttribute("id");
%>
<h2>로그인 페이지</h2>
<form action="sessionLoginProcess2.jsp" method="post">
    세션 아이디값: <%=user_id%>
    <p>
        아이디 : <input type="text" name="user_id"> <%--id는 페이지 내에서 구별하는 이름
                                                        name은 전체에서 구별하는 이름--%>
    </p>
    <p>
        패스워드 : <input type="password" name="user_pw">
    </p>
    <p>
        <input type="submit" value="로그인하기">
    </p>

</form>
</body>
</html>
