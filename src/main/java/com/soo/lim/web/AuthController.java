package com.soo.lim.web;

import com.soo.lim.domain.Member;
import com.soo.lim.service.MemberService;
import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/auth")
@Controller
public class AuthController {
// test
  @Resource
  private MemberService memberService;

  @GetMapping("form")
  public void form() throws Exception {
  }
  @PostMapping("login")
  public String login(HttpServletResponse response, HttpSession session, String memberNo, String password) throws Exception {
    Cookie cookie = new Cookie("memberNo", memberNo);
    cookie.setMaxAge(60 * 60 * 24 * 15);
    response.addCookie(cookie);
    Member member = memberService.get(memberNo, password);
    session.setAttribute("loginUser", member);
    return "redirect:../index";
  }

  @GetMapping("logout")
  public String logout(HttpSession session) throws Exception {
    session.invalidate();

    return "redirect:../index";
  }

}
