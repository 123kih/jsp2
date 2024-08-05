<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL Formatting</title>
</head>
<body>
  <h2>숫자 포맷 설정</h2>
  <c:set var="num1" value="123450000000"></c:set>
  콤마 O:<fmt:formatNumber value="${num1}"></fmt:formatNumber><br>
  콤마 X:<fmt:formatNumber value="${num1}" groupingUsed="false"></fmt:formatNumber><br>
  <fmt:formatNumber value="${num1}" type="currency" var="printNum1"></fmt:formatNumber>
  통화기호 : ${printNum1}<br>
  <fmt:formatNumber value="${num1}" type="percent" var="printNum2"></fmt:formatNumber>
  퍼센트 : ${printNum2}<br>

  <c:set var="num2" value="6,789.0177895222"></c:set>
  <fmt:parseNumber value="${num2}" pattern="00,000.00" var="printNum3"></fmt:parseNumber>
  소수점까지 : ${printNum3}<br>
  <fmt:parseNumber value="${num2}" integerOnly="true"  var="printNum4"></fmt:parseNumber>
  정수부분만 : ${printNum4}<br>
</body>
</html>
