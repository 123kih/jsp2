<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장객체 out</title>
</head>
<body>
  <%
    //버퍼내용 출력하기
    out.print("출력되지 않는 텍스트");
    out.clearBuffer();

    out.print("<h2>out 내장객체</h2>")
    out.print("출력 버퍼의 크기 +" + out.getBufferSize()+"<br>")
    out.print("출력 버퍼의 크기 +" + out.getRemaining()+"<br>")

    out.flush(); //버퍼내용출력
    out.print("flush 후 버퍼의 크기" + out.getRemaining()+"<br>")

    out.print(1);
    out.print(false);
    out.print('가');
  %>
</body>
</html>
