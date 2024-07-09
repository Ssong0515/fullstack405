package bitc.fullstack405.study13.commons;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.PrintWriter;

public class JSFunction {
    public static void alertLocation(String msg, String url, HttpServletResponse response) {
        try {
            response.setContentType("text/html; charset=utf-8");
            PrintWriter out = response.getWriter();

            String script = "<script>";
            script += "alert('" + msg + "'); ";
            script += "location.href = '" + url + "'; ";
            script += "</script>";

            out.println(script);
        } catch (Exception e) {
            System.out.println("JSFunction 오류 발생: " + e.getMessage());
        }
    }

    public static void alertBack(String msg, HttpServletResponse response) {
        try {
            response.setContentType("text/html; charset=utf-8");
            PrintWriter out = response.getWriter();

            String script = "<script>";
            script += "alert('" + msg + "'); ";
            script += "history.back(); ";
            script += "</script>";

            out.println(script);
        } catch (Exception e) {
            System.out.println("JSFunction 오류 발생: " + e.getMessage());
        }
    }
}
