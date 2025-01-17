<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Response 내장객체</title>
</head>
<body>
<%--
    Response 내장 객체
    요청에 대한 응답을 브라우저로 보내주는 역할
    -페이지 이동(리다이렉트)
    -HTTP 헤더에 응답헤더 추가
--%>

<h2>1. 리다이렉트</h2>
<h2>로그인 폼</h2>

<%
  String loginErr=request.getParameter("loginErr");
  if(loginErr!=null){
    out.println("로그인 실패");
  }
%>
  <form action="ResponseLogin.jsp" method="post">
    아이디 : <input type="text" name="user_id"><br>
    패스워드 :<input type="text" name="user_pwd"><br>
    <input type="submit" value="로그인">
  </form>

  <h2> HTTP 응답 헤더 추가하기</h2>
  <form action="ResponseHeader.jsp" method="get">
    날짜 형식 : <input type="text" name="add_date" value="2024-07-24 09:25"><br>
    숫자 형식 : <input type="text" name="add_int" value="1111"> <br>
    문자 형식 : <input type="text" name="add_str" value="jsp" <br>
    <input type="submit" value="응답헤더 설정 & 출력">
  </form>
</body>
</html>
