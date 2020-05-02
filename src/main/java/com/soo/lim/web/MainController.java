package com.soo.lim.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.soo.lim.domain.Member;

@Controller

@RequestMapping("/")
public class MainController {

    @GetMapping("index")
    public void index(@ModelAttribute Member loginUser) throws Exception {

    }


}
