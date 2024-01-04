package com.boot.demo.controller;
import com.boot.demo.dao.*;
import com.boot.demo.model.User;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	 private final UserRepository userRepository;

	    @Autowired
	    public HomeController(UserRepository userRepository) {
	        this.userRepository = userRepository;
	    }

   


    @PostMapping("/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        HttpSession session) {
      
        
        User user = userRepository.findByUsernameAndPassword(username, password);
        if (user != null) {
            session.setAttribute("loginMessage", "Login successful!");
            return "redirect:/home?loginSuccess=true";  
        } else {
            session.setAttribute("loginMessage", "Login Failed!");
            return "redirect:/?loginSuccess=false";
        }
    }

    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }
    
    
    
}