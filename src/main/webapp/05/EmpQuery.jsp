<%@ page import="com.example.jsp.common.JDBCConnect" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.PreparedStatement" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>emp 회원 추가 리스트</title>
</head>
<body>
<h2>emp 회원 추가 리스트</h2>
<%

    JDBCConnect jdbc=new JDBCConnect();

    int empno=2512;
    String ename="inha";
    String job="student";
    int mgr=5234;
    int sal=3000;
    int comm=100;
    int deptno=101;

    //쿼리문 생성
    String sql="INSERT INTO scott.emp(empno,ename,job,mgr,hiredate,sal,comm,deptno)" +
            " VALUES(?,?,?,?,sysdate,?,?,?)";

    PreparedStatement pstmt=jdbc.conn.prepareStatement(sql);

    pstmt.setInt(1,empno);
    pstmt.setString(2,ename);
    pstmt.setString(3,job);
    pstmt.setInt(4,mgr);
    pstmt.setInt(5,sal);
    pstmt.setInt(6,comm);
    pstmt.setInt(7,deptno);

//    int intResult=pstmt.executeUpdate();

    out.println("행이 입력되었습니다.");
    jdbc.close();

%>
</body>
</html>
