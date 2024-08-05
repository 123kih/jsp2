<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL - Redirect</title>
</head>
<body>
  <c:set var="requestVar" value="must" scope="request"/>
    <c:redirect url="OtherPage.jsp">
      <c:param name="user_param1" value="1"></c:param>
      <c:param name="user_param2" value="2"></c:param>
    </c:redirect>
</body>
</html>
