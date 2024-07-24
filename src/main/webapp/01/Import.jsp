<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>

<%-- JSP 파일은 Java파일로 변환된다.
    자바에서 외부 클래스를 사용하려면 import문으로 해당 패키치, 클래스를 가져와야 하듯이
    JSP 파일에서도 필요한 클래스나 패키지는 import를 해야함

--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Date today = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String todayStr= dateFormat.format(today);
    out.println("오늘 날짜 : "+ todayStr);
%>
</body>
</html>
