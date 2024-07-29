<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%
  String user_id=request.getParameter("user_id");
  String user_pw=request.getParameter("user_pw");
  String user_name=request.getParameter("user_name");
  String user_tel=request.getParameter("user_tel");
  String user_email=request.getParameter("user_email");
  String user_addr=request.getParameter("user_addr");
  String user_gender=request.getParameter("gender");
  String user_phone=request.getParameter("user_phone");
%>
<html>
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <link rel="stylesheet" href="join.css">
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form  method="post">
      <input type='text' placeholder='아이디:'  name="user_id"/>
      <input type='text' placeholder='비밀번호:'  name="user_pw"/>
      <input type='text' placeholder='성명:'  name="user_name"/>
      <input type='text' placeholder='전화번호:'  name="user_tel"/>
      <input type='text' placeholder='이메일:'  name="user_email"/>
      <input type='text' placeholder='사는 지역:'  name="user_addr"/>
      <p>
        <label><input type='radio' name="gender" value="male">남자</label>
        <label><input type='radio' name="gender" value="female">여자</label>
      </p>
      <p>
        <label>
          <select name="user_phone">
            <option value="skt">SKT</option>
            <option value="kt">KT</option>
            <option value="u+">U+</option>
          </select>
        </label>
      </p>
      <input type='submit' placeholder='SUBMIT' />
    </form>
  </div>
  <div class='whysign'>
    <h1>Learn by Doing</h1>
    <div>
      <p>아이디:<%=user_id%></p>
      <p>비밀번호:<%=user_pw%></p>
      <p>이름:<%=user_name%></p>
      <p>전화번호:<%=user_tel%></p>
      <p>이메일:<%=user_email%></p>
      <p>사는 지역:<%=user_addr%></p>
      <p>성별:<%=user_gender%></p>
      <p>통신사:<%=user_phone%></p>
    </div>
  </div>
</div>
</body>
</html>

