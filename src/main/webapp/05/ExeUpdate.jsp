<%@ page import="com.example.jsp.common.JDBCConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>JDBC</title>
</head>
<body>
<h2>회원 추가 테스트(executeUpdate() 활용)</h2>
<%
  JDBCConnect jdbc=new JDBCConnect();
  String id="test3"; //변수에 직접 값을 입력해주는것을 '하드코딩'이라 한다.
  String pass="1234";
  String name="테스트";

  //쿼리문 생성
  String sql="INSERT INTO scott.member(ID,PASS,NAME,REGIDATE)"+
              "VALUES(?,?,?,sysdate)";

  PreparedStatement psmt = jdbc.conn.prepareStatement(sql);
  psmt.setString(1,id);
  psmt.setString(2,pass);
  psmt.setString(3,name);

  int intResult=psmt.executeUpdate();
  out.println(intResult + "행이 입력되었습니다.");

  //연결 종료
  jdbc.close();
%>
</body>
</html>
