package com.example.carspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class AuthController {

    @GetMapping("/auth/login")
    public String displayLoginPage(HttpSession session) {
        boolean loggedIn = session != null && session.getAttribute("user") != null;
        if (loggedIn) {
            return "redirect:/list-car";
        } else {
            return "/auth/login";
        }
    }

    @PostMapping("/auth/login")
    public String login(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Map<String, String> messages = new HashMap<>();

        if (username == null || username.isEmpty()) {
            messages.put("username", "Please enter username");
        }

        if (password == null || password.isEmpty()) {
            messages.put("password", "Please enter password");
        }

        if (messages.isEmpty()) {

            if (username.equals("admin") && password.equals("admin")) {
                request.getSession().setAttribute("user", username);
                return "redirect:/list-car";
            } else {
                messages.put("login", "Unknown login, please try again");
            }
        }
        request.setAttribute("messages", messages);
        return "/auth/login";
    }

    @GetMapping("/auth/logout")
    public String displayLogoutPage() {
        return "/auth/logout";
    }

    @PostMapping("/auth/leave")
    public String logout(HttpSession session, @RequestParam("leave") boolean leaveOk) {
        if (leaveOk) {
            session.invalidate();
        }
        return "redirect:/auth/login";
    }


}
