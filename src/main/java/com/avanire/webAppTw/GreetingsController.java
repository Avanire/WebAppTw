package com.avanire.webAppTw;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class GreetingsController {

    @GetMapping("/greetings")
    public String greetings(@RequestParam(name = "name", required = false, defaultValue = "World") String name,
                            Map<String, Object> model) {
        model.put("name", name);
        return "greetings";
    }

    @GetMapping
    private String main(Map<String, Object> model) {
        model.put("some", "hello, letscode");
        return "main";
    }
}
