<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL out</title>
</head>
<body>
    <%--표현식처럼 변수 출력할 때 사용--%>
    <%--null 일때 default 값이 출력됨--%>
    <c:set var="iTag">
        i 태그는 <i>기울임</i> 을 표현
    </c:set>

    <h2>기본 사용</h2>
    <%--HTML 태그로 인식되지 않고 텍스트 상태 그대로 화면에 표시--%>
    <c:out value="${iTag}"></c:out>

    <h2>escapeXml 속성</h2>
    <%--특수문자로 변환할지 여부 기본값은 true--%>
    <%--false로 지정 시 HTML 태그를 해헉해 마크업이 적용된 상태로 출력--%>
    <c:out value="${iTag}" escapeXml="false"></c:out>

    <h2>default 속성</h2>
    <c:out value="${param.name}" default="이름 없음"></c:out>
    <c:out value="" default="빈 문자열도 값임"></c:out>
</body>
</html>
