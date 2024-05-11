package com.winevillage.winevillage.security;

import java.security.Principal;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class GlobalControllerAdvice {

    @ModelAttribute("user_id")
    public String userId(Principal principal) {
        return (principal != null) ? principal.getName() : null;
    }
}