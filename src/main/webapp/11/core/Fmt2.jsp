<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL fmt</title>
</head>
<body>
<%--날짜 타입과 관련된 포메팅--%>
<c:set var="today" value="<%=new Date()%>"></c:set>
<h2>날짜 포멧</h2>
full : <fmt:formatDate value="${today}" type="date" dateStyle="full"></fmt:formatDate><br>
short : <fmt:formatDate value="${today}" type="date" dateStyle="short"></fmt:formatDate><br>
long : <fmt:formatDate value="${today}" type="date" dateStyle="long"></fmt:formatDate><br>
default : <fmt:formatDate value="${today}" type="date" dateStyle="default"></fmt:formatDate><br>

<h2>시간 포멧</h2>
full : <fmt:formatDate value="${today}" type="time" timeStyle="full"></fmt:formatDate><br>
short : <fmt:formatDate value="${today}" type="time" timeStyle="short"></fmt:formatDate><br>
long : <fmt:formatDate value="${today}" type="time" timeStyle="long"></fmt:formatDate><br>
default : <fmt:formatDate value="${today}" type="time" timeStyle="default"></fmt:formatDate><br>

<h2>날짜 & 시간 표시</h2>
full : <fmt:formatDate value="${today}" type="both" dateStyle="full"></fmt:formatDate><br>
full : <fmt:formatDate value="${today}" type="both" pattern="YYYY-MM-dd hh:mm:ss"></fmt:formatDate><br>

<h2>타임존 설정</h2>
<fmt:timeZone value="GMT">
    <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate><br>
</fmt:timeZone>

<fmt:timeZone value="America/Chicago">
    <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate><br>
</fmt:timeZone>

<h2>로케일 설정</h2>
한글로 설정 :
<fmt:setLocale value="ko_kr"></fmt:setLocale>
<fmt:formatNumber type="currency" value="10000"></fmt:formatNumber><br>
<fmt:formatDate value="${today}"></fmt:formatDate><br>

일어로 설정 :
<fmt:setLocale value="ja_jp"></fmt:setLocale>
<fmt:formatNumber type="currency" value="10000"></fmt:formatNumber><br>
<fmt:formatDate value="${today}"></fmt:formatDate><br>

영어로 설정 :
<fmt:setLocale value="en_US"></fmt:setLocale>
<fmt:formatNumber type="currency" value="10000"></fmt:formatNumber><br>
<fmt:formatDate value="${today}"></fmt:formatDate><br>



</body>
</html>
