<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>FrontController</title>
</head>
<body>
    <h2>한번에 매핑으로 여러가지 요청 처리하기</h2>
    ${resultValue}

    <ol>
        <li>URI : ${uri}</li>
        <li>요청명 : ${commandStr}</li>
    </ol>

    <ul>
        <li><a href="../12/regist.one">회원가입</a> </li>
        <li><a href="../12/login.one">로그인</a> </li>
        <li><a href="../12/freeboard.one">자유게시판</a> </li>
    </ul>
</body>
</html>
