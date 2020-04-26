package com.soo.lim.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
    System.out.println("form이란다아아아아");
  }
  
  @GetMapping("list")
  public void findAll(Model model) throws Exception {
    System.out.println("리스트란다");
    List<Member> members = memberService.list();
    System.out.println(members);
    model.addAttribute("members", members);
  }
  
}
