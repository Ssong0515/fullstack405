package bitc.fullstack405.study03.util;

import jakarta.servlet.jsp.JspWriter;

public class JSFunction {
    public static void alertLocation(String msg, String url, JspWriter out) {
        try {
            String script = ""
                    + "<script>"    // 자바스크립트를 사용하기 위한 문자열 생성
                    + "alert('" + msg + "');"
                    + "location.href='" + url + "';" // 자바스크립트에서 제공하는 페이지 이동 명령여, a 태그와 동일 기능
                    + "</script>";

            out.println(script);    // jsp의 out 객체를 사용하여 html에 자바스크립트 내용을 출력
        } catch (Exception e) {}
    }

    public static void alertBack(String msg, JspWriter out) {
        try {
            String script = "<script>";
            script += "alert('" + msg + "');";
            script += "history.back();";
            script += "</script>";

            out.println(script);
        } catch (Exception e) {}
    }
}
