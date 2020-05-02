package com.soo.lim.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.soo.lim.domain.Member;
import com.soo.lim.service.MemberService;

@Controller

@RequestMapping("/")
public class MainController {

  @Resource
  MemberService memberService;

  @GetMapping("index")
  public void form(@ModelAttribute Member loginUser, Model model, HttpSession session)
      throws Exception {
    model.addAttribute("loginUser", loginUser);
  }


}
