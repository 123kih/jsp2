<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="x" uri="jakarta.tags.xml" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL - xml</title>
</head>
<body>
<%--
    xml태그는 xml문서를 처리하기 위한 것
    xml 파싱 및 풀력 흐름 제어 등의 기능
--%>

    <c:set var="booklist">
        <c:import url="BookList.xml" charEncoding="UTF-8"></c:import>
    </c:set>
    <x:parse xml="${booklist}" var="blist"></x:parse>

    <h2>파싱 1</h2>
    제목 : <x:out select="$blist/booklist/book[1]/name"></x:out><br>
    작가 : <x:out select="$blist/booklist/book[2]/author"></x:out><br>
    가격 : <x:out select="$blist/booklist/book[1]/price"></x:out><br>

    <h2>파싱 2</h2>
    <table border="1">
        <tr>
            <td>제목</td>
            <td>작가</td>
            <td>가격</td>
        </tr>
        <x:forEach select="$blist/booklist/book" var="item">
            <tr>
                <td><x:out select="$item/name"></x:out> </td>
                <td><x:out select="$item/author"></x:out> </td>
                <td>
                    <x:choose>
                        <x:when select="$item/price >=20000 ">
                            2만원 이상 <br>
                        </x:when>
                        <x:otherwise>
                            2만원 미만<br>
                        </x:otherwise>
                    </x:choose>
                </td>
            </tr>
        </x:forEach>
    </table>

    <h2>파싱 3</h2>
    <table>
        <x:forEach select="$blist/booklist/book" var="item">
            <tr>
                <td><x:out select="$item/name"></x:out> </td>
                <td><x:out select="$item/author"></x:out> </td>
                <td><x:out select="$item/price"></x:out> </td>
                <td><x:if select="$item/name='총,균,쇠'">구매함</x:if></td>
            </tr>
        </x:forEach>
    </table>
</body>
</html>
