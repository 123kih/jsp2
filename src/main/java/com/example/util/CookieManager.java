package com.example.util;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieManager {
    // 이름, 값, 유지 기간 조건으로 새로운 쿠키를 생성
    public static void makeCookie(HttpServletResponse response, String cName, String cValue, int cTime) {
        Cookie cookie = new Cookie(cName, cValue);  // 쿠키 생성
        cookie.setPath("/");        // 경로 설정
        cookie.setMaxAge(cTime);    // 유지 기간 설정
        response.addCookie(cookie); // 응답 객체에 추가
    }

    // 해당 이름의 쿠키를 찾아 그 값을 반환
    public static String readCookie(HttpServletRequest request, String cName) {
        String cookieValue = "";    // 반환 값

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for(Cookie c : cookies) {
                String cookieName = c.getName();
                if(cookieName.equals(cName)) {
                    cookieValue = c.getValue();     // 반환 값 저장
                }
            }
        }
        return cookieValue;
    }

    // 해당 이름의 쿠키를 삭제
    public static void deleteCookie(HttpServletResponse response, String cName) {
        makeCookie(response, cName, "", 0);
    }
}







