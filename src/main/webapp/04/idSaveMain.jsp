<%@ page import="com.example.CookieManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cookie - 아이디 저장하기</title>
</head>
<body>
<%
    String loginId= CookieManager.readCookie(request,"loginId");
    String loginPw= CookieManager.readCookie(request,"loginPw");

    String cooKieCheck="";
    if(!loginId.equals("") && !loginPw.equals("")){
        cooKieCheck="checked";
    }
%>
<h2>로그인 페이지</h2>
<form action="idSaveProcess.jsp" method="post">
    <p>
        아이디 : <input type="text" name="user_id" value="<%=loginId%>">
<%--        <input type="checkbox" name="save_check" value="Y" <%=cooKieCheck%>>아이디저장하기--%>
        <input type="checkbox" name="save_check" value="Y" <%=cooKieCheck%>>로그인 유지하기
    </p>
    <p>
        패스워드 : <input type="password" name="user_pw" value="<%=loginPw%>">
    </p>
    <p>
        <input type="submit" value="로그인하기">
    </p>

</form>
</body>
</html>
