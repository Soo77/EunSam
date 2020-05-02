package com.soo.lim.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.soo.lim.domain.CommCode;
import com.soo.lim.service.CommCodeService;

@Controller

@RequestMapping("/commcode")
public class CommCodeController {

  @Resource CommCodeService commCodeService;
  
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
    List<CommCode> commcodes = commCodeService.list();
    model.addAttribute("commcodes", commcodes);
  }
  
  @PostMapping("add")
  public String add(CommCode commCode) throws Exception {
	  commCodeService.insert(commCode);
	  return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    System.out.println("컨트롤러에 디테일은 이거거든요:" + no);
    CommCode commCode = commCodeService.get(no);
    model.addAttribute("commCode", commCode);
  }
   
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    commCodeService.delete(no);
    return "redirect:list";
  }
  
  @PostMapping("update")
  public String update(CommCode commCode) throws Exception {
    commCodeService.update(commCode);
    return "redirect:list";
  }
  
}
