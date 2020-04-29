package com.soo.lim.web;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.soo.lim.domain.Member;
import com.soo.lim.service.MemberService;

@Controller

@RequestMapping("/member")
public class MemberController {

  @Resource
  MemberService memberService;

  @GetMapping("form")
  public void form() throws Exception {
  }
  
  @GetMapping("list")
  public void findAll(Model model) throws Exception {
    System.out.println("일단 한글 테스트");
    List<Member> members = memberService.list();
    System.out.println(members);
    model.addAttribute("members", members);
  }

  @PostMapping("add")
  public String insert(Member member) throws Exception {
    memberService.insert(member);
    return "redirect:/app/index";
  }

  @PostMapping("signin")
  public String signin(HttpServletResponse response, HttpSession session, String id, String password) throws Exception {
    Cookie cookie = new Cookie("id", id);
    cookie.setMaxAge(60 * 60 *24 * 15);
    response.addCookie(cookie);

    Member member = memberService.get(id, password);

    session.setAttribute("loginUser", member);

    return "redirect:/app/index";
  }
}
