<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <%
        out.print(request.getParameter("num"));
        String number = request.getParameter("num");
        out.print(number);
        int num= Integer.parseInt("5");
        out.print(num);
//        for(int i=1;i<=9;i++)
//        {
//            out.println(num+"*"+i+"="+num*i+"<br>");
//        }
    %>
</body>
</html>
