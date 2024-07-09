package bitc.fullstack405.study07.util;

import jakarta.servlet.jsp.JspWriter;

// JSP 내에서 필요 시, 자바스크립트의 alert, location.href, history.back을 쉽게 사용 하도록 하는 클래스
public class JSFunction {
    public static void alertLocation(String msg, String url, JspWriter out) {
        try {
            String script = "<script>";
            script += "alert('" + msg + "');";
            script += "location.href='" + url + "';";
            script += "</script>";
            out.println(script);
        } catch (Exception e) {

        }
    }

    public static void alertBack(String msg, JspWriter out) {
        try {
            String script = "<script>";
            script += "alert('" + msg + "'); ";
            script += "history.back(); ";
            script += "</script>";
            out.println(script);

        } catch (Exception e) {

        }
    }
}
