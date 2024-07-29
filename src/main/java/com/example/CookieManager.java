package com.example;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieManager {
    //이름, 값, 유지 기간 조건으로 새로운 쿠키 생성
    public static void makeCookie(HttpServletResponse response, String cName, String cValue, int cTime) {
        Cookie cookie = new Cookie(cName, cValue); // 쿠키생성
        cookie.setPath("/"); //경로설정
        cookie.setMaxAge(cTime); //유지기간설정
        response.addCookie(cookie);
    }

    //해당 이름의 쿠키를 찾아 그 값을 변환
    public static String readCookie(HttpServletRequest request, String cName) {
        String cookieValue = ""; //반환 값

        Cookie[] cookies = request.getCookies();
        if(cookies != null) {
            for(Cookie cookie : cookies) {
                String cookieName= cookie.getName();
                if(cookieName.equals(cName)) {
                    cookieValue = cookie.getValue();
                }
            }
        }
        return cookieValue;
    }

    //해당 이름의 쿠키 삭제
    public static void deleteCookie(HttpServletResponse response, String cName) {
        makeCookie(response, cName, "", 0);
    }
}
