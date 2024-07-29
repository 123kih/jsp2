<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <%!
        String str="Hello, Java Server Pages";
        String getString(String data) {
            return data;
        }
    %>
    <%out.println(str);%>
    <%=getString(str)%>
</body>
</html>
