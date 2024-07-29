package com.example;

import jakarta.servlet.jsp.JspWriter;
import java.io.IOException;

public class JSFunction {
    //메세지 알림창을 띄운후 해당 URL로 이동
    public static void alertLocation(String msg, String url, JspWriter out) {
        //자바 스크립트 코드
        try {
            String script = ""
                    + "<script>"
                    + "alert('" + msg + "');"
                    + "location ='" + url + "';"
                    + "</script > ";

            out.println(script);
        } catch (Exception e) {}
    }

    public static void alertBack(String msg , JspWriter out) {
        //자바 스크립트 코드
        try {
            String script = ""
                    + "<script>"
                    + "alert('"+msg+"');"
                    + "history.back()"
                    + "</script > ";

            out.println(script);
        }catch(Exception e) {}
    }
}
