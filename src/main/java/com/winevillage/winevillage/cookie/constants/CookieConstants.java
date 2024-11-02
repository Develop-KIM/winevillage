package com.winevillage.winevillage.cookie.constants;

import java.util.Arrays;
import java.util.List;

public class CookieConstants {

    public static final String COOKIE_NAME = "wine_village_cookie";
    public static final String COOKIE_VALUE = "value";
    public static final int COOKIE_MAX_AGE_HOURS = 6;
    public static final String ROOT_PATH = "/";

    public static final List<String> STATIC_RESOURCES = Arrays.asList(
            "/resources/**", "/**/*.png", "/**/*.svg", "/**/*.jpg",
            "/**/*.ttf", "/**/*.eot", "/**/*.woff", "/**/*.otf"
    );

    public static final List<String> EXCLUDED_PATHS = Arrays.asList(
            "/setCookie", "/admin/*"
    );
}
