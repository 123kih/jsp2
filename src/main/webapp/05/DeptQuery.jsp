<%@ page import="com.example.jsp.common.JDBCConnect" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>JDBC</title>
</head>
<body>
    <h2>회원조회 테스트</h2>
<%
    JDBCConnect jdbc= new JDBCConnect();

    //쿼리문 생성
    String sql="SELECT DEPTNO, DNAME, LOC FROM scott.DEPT";
    Statement statement=jdbc.conn.createStatement();

    //쿼리실행
    ResultSet rs=statement.executeQuery(sql);

    while(rs.next()){
        String deptno=rs.getString("DEPTNO");
        String dname=rs.getString("DNAME");
        String loc=rs.getString("LOC");

        out.println(String.format("deptno: %s dname: %s loc : %s",deptno, dname, loc)+"<br>");
    }
%>
</body>
</html>
