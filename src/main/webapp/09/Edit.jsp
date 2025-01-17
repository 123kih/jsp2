<%@ page import="com.example.board.BoardDAO" %>
<%@ page import="com.example.board.BoardDTO" %>
<%@ page import="com.example.util.JSFunction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%@include file="IsLoggedIn.jsp"%>
<%
    String num= request.getParameter("num");
    BoardDAO dao= new BoardDAO();
    BoardDTO dto= dao.selectView(num);

    String sessionId= session.getAttribute("UserId").toString();
    if(!sessionId.equals(dto.getId())){
        JSFunction.alertBack("작성자 본인만 수정할 수 있습니다",out);
        return;
    }

    dao.close();
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<head>
    <title>회원제 게시판</title>
    <%--유효성 검증 스크립트--%>
    <script type="text/javascript">
        function validateForm(form) {
            if (!form.title.value) {
                alert("제목을 입력 하세요");
                form.title.focus();
                return false;
            }
            if (!form.content.value) {
                alert("내용을 입력 하세요");
                form.content.focus();
                return false;
            }
        }
    </script>
</head>
<body>
<jsp:include page="../common/Link.jsp"></jsp:include>
<h2>회원제 게시판 - 수정하기</h2>

<form name="writeFrm" method="post" action="EditProcess.jsp" onsubmit="return validateForm(this)">
    <input type="hidden" name="num" value="<%=dto.getNum()%>">
    <table border="1" width="90%">
        <tr>
            <td>제목</td>
            <td><input type="text" name="title" style="width: 90%" value="<%=dto.getTitle()%>"/></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><textarea name="content" style="width: 90%; height: 100px"><%=dto.getContent()%></textarea></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <button type="button" onclick="location.href='List.jsp';">목록 보기</button>
                <button type="reset">다시 입력</button>
                <button type="submit">작성 완료</button>
            </td>
        </tr>
    </table>


</form>
</body>
</body>
</html>
