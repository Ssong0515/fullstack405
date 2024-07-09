package bitc.fullstack405.study12.util;

import jakarta.servlet.jsp.JspWriter;

public class JSFunction {

    public static void alertLocation(String msg, String url, JspWriter out) {
        try {
            String script = "<script>";
            script += "alert('" + msg + "');";
            script += "location.herf = '" + url + "';";
            script += "</script>;";
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void alertBack(String msg, JspWriter out) {
        try {
            String script = "<script>";
            script += "alert('" + msg + "'); ";
            script += "history.back(); ";
            script += "</script>;";
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
