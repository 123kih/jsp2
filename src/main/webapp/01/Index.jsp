<%-- 지시어 Directive
    JSP 페이지를 자바(서블릿) 코드로 변환하는데 필요한 정보를 JSP 엔진에 알려준다.
    스크립트 언어나, 인코딩 방식을 설정 한다.

    기본형태
    <%@ 지시어종류 속성1 = "값1" 속성2 = "값2" %>

    지시어 종류
    page 지시어 :
    문서의 타입, 에러페이지

    include 지시어 :
    반복되는 부분을 별도의 파일에 작성해두고 필요한 페이지에서
    include 지시어로 포함시킬 수 있다.
    기본형태 >>
    <%@ include file="포함할 파일의 경로" %>

    tablib 지시어
    EL JSTL 사용할 때 사용하는 지시어
--%>

<%--
    스크립트 요소
    JSP에서 자바 코드를 직접 작성할 수 있게 해준다.

    선언부 : 표현식이나 스크립틀릿에서 사용할 멤버 변수, 메서드 선언
    기본형식 >> <%! 변수선언 %>

    스크립틀릿 : JSP 페이지가
    표현식
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- 스크립트 요소(선언부) --%>
<%!
    String str1="JSP";
    String str2="안녕";
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%-- 스크립트 요소(표현식)--%>
<h1><%= "Hello World!" %>
    <%--  --%>
    <%
        out.println(str2+ str1 +" 입니다. 열공합시다.");
    %>

    <%--
        배포 설명자 web.xml
        웹 애플리케이션의 환경설정 정보를 담은 파일
        WAS(Web Application Server) 가 처음 구동될 때 이 파일을 읽어서
        설정내용을 톰켓에 적용한다.
        서블릿 설정, 웰컴파일 목록, 오류 페이지 처리...

        서버 :
        웹에서 서비스를 제공하는 컴퓨터 시스템

        웹서버 :
        사용자로부터 HTTP를 통해 요청을 받거나, 웹 컨테이너가 전달해준 결과물을 정적인 페이지
        로 생성해서 사용자에게 응답해주는 소프트웨어
        웹페이지는 HTML , CSS , JS 등으로 구성된다.

        웹 컨테이너
        웹 서버가 전송해준 요청을 기초로 동적인 페이지를 생성해 웹서버로 돌려준다.

        WAS(Tomcat)
        웹 애플리케이션이 실행될 수 있는 환경을 제공하는 소프트웨어
        WAS는 웹컨테이너를 포함한 개념

        HTTP(HyperText Transfer Protocol)
        웹 서버와 사용자 사이의 통신을 위한 프로토콜
        사용자가 요청하면 웹서버가 응답하는 단순한 구조의 프로토콜

        HTTPS (HTTP Secure)
        암호화된 HTTP

        프로토콜
        네트워크를 통해 컴퓨터들이 정보를 주고받는 절차 혹은 통신 규약
        HTTP,
        FIP(File Transger Protocol) - 파일전송 프로토콜
        SMTP(Simple Mail Transfer Protocol) - 이메일 전송 프로토콜

        포트
        컴퓨터 사이에서 데이터를 주고받을 수 있는 통로
        한 컴퓨터당 포트는 0 ~ 65535 까지 존재
        Well Known Port(0 ~ 1023)
        FTP 는 보통 20 ,21 번 포트 사용
        SSH 는 보통 22번 포트 사용
        HTTP 는 보통 80번 포트 사용
        SMTP, DNS , DHCP ....

        등록 포트
        Oracle 1521
        PostGres 5432
    --%>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>