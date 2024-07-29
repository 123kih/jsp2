<%@ page import="com.example.jsp.common.JDBCConnect" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>JDBC</title>
</head>
<body>
<h2>회원 조회 테스트(executeQuery() 사용)</h2>

<%
  JDBCConnect jdbc=new JDBCConnect();

  //쿼리문 생성
  String sql="SELECT id, pass, name, regidate FROM scott.member";
  Statement stmt=jdbc.conn.createStatement();

  //쿼리 실행
  ResultSet rs=stmt.executeQuery(sql);

  //결과 확인(페이지에 출력)
  while(rs.next()){
    //String id=rs.getString("id"); 아래와 동일
    String id=rs.getString(1);
    String pass=rs.getString(2);
    String name=rs.getString(3);
    Date regidate=rs.getDate(4);

    out.println(String.format("%s %s %s %s", id, pass, name,regidate)+"<br>");
  }
  jdbc.close();
%>
</body>
</html>
