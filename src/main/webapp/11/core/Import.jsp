<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL - import</title>
</head>
<body>
    <%--import는 외부 파일을 현재 위치에 삽입할 때 사용
        외부 페이지도 삽입할 수 있다.

        기본형식
        <c:import url="페이지 경로" scope="영역"/>
    --%>
    <c:set var="requestVar" scope="request" value="must"></c:set>
    <c:import url="OtherPage.jsp" var="contents">
        <c:param name="user_param1" value="JSP"></c:param>
        <c:param name="user_param2" value="Java"></c:param>
    </c:import>

    ${contents}

    <iframe src="GoldPage.jsp" style="width: 100%"; height="600";></iframe>
</body>
</html>
