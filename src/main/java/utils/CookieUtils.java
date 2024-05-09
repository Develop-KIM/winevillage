package utils;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieUtils {

    // 쿠키를 생성하고 클라이언트로 전송하는 메서드
    public static void createCookie(HttpServletResponse response, String name, String value, int maxAge) {
        Cookie cookie = new Cookie(name, value);
        cookie.setPath("/");
        cookie.setMaxAge(maxAge);
        response.addCookie(cookie);
    }

    // 요청으로부터 특정 이름의 쿠키를 조회하는 메서드
    public static Cookie getCookie(HttpServletRequest request, String name) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (name.equals(cookie.getName())) {
                    return cookie;
                }
            }
        }
        return null;
    }

    // 프로젝트에 이 `CookieUtils` 클래스를 추가한 후, 이전에 작성했던 쿠키 관련 코드에서 `CookieUtils`를 사용할 수 있습니다.
}
