package com.soo.lim.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.soo.lim.domain.Test;
import com.soo.lim.service.TestService;

@Controller

@RequestMapping("/test")
public class TestController {

  @Resource
  TestService testService;

  @GetMapping("form")
  public void form() throws Exception {
    System.out.println("안녕?");
  }
  
  @GetMapping("db")
  public void db() throws Exception {
    System.out.println("안녕?");
  }

  @GetMapping("list")
  public void findAll(Model model) throws Exception {
    System.out.println("리스트란다");
    List<Test> tests = testService.list();
    System.out.println(tests);
    model.addAttribute("tests", tests);
  }
  
  @PostMapping("add")
  public String add(Test test) throws Exception {
	  testService.insert(test);
	  return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    System.out.println("컨트롤러에 디테일은 이거거든요:" + no);
    Test test = testService.get(no);
    model.addAttribute("test", test);
  }
   
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    testService.delete(no);
    return "redirect:list";
  }
  
  @PostMapping("update")
  public String update(Test test) throws Exception {
    testService.update(test);
    return "redirect:list";
  }
  
}
