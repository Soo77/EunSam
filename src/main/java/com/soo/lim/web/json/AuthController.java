package com.soo.lim.web.json;

import com.soo.lim.service.MemberService;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/json/auth")
public class AuthController {

  @Resource
  private MemberService memberService;

  @GetMapping()
}
