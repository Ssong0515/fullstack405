package bitc.fullstack405.study03.util;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieManager {
    // HttpServletResponse: 클라이언트의 요청에 대한 서버의 응답을 전달하기 위한 response 내장 객체
    public static void makeCookie(HttpServletResponse response, String cName, String cValue, int cTime) {
        Cookie cookie = new Cookie(cName, cValue);
        // 현재 위치로 경로 설정
        cookie.setPath("/");
        cookie.setMaxAge(cTime);
        response.addCookie(cookie);
    }

    // HttpServletRequest: 클라이언트의 요청 시, 클라이언트에서 전달되는 데이터를 저장하고 있는 request 클래스
    public static String readCookie(HttpServletRequest request, String cName) {
        String cookieValue = "";

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c: cookies) {
                String cookieName = c.getName();
                if (cookieName.equals(cName)) {
                    cookieValue = c.getValue();
                }
            }
        }
        return cookieValue;
    }

    public static void deleteCookie(HttpServletResponse response, String cName) {
        makeCookie(response, cName, "", 0);
    }
}
