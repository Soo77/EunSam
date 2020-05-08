package com.soo.lim.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.soo.lim.domain.CommCode;
import com.soo.lim.domain.Product;
import com.soo.lim.service.CommCodeService;
import com.soo.lim.service.ProductService;

@Controller

@RequestMapping("/product")
public class ProductController {

  @Resource ProductService productService;
  @Resource CommCodeService commCodeService;
  
  @GetMapping("form")
  public void form() throws Exception {
    System.out.println("안녕?");
  }
  @GetMapping("detail2")
  public void detail2() throws Exception {
    System.out.println("detail2");
  }
  @GetMapping("index")
  public void index() throws Exception {

  }
  @GetMapping("db")
  public void db() throws Exception {
    System.out.println("안녕?");
  }

  @GetMapping("list")
  public void findAll(Model model) throws Exception {
    System.out.println("리스트란다");
    List<Product> products = productService.list();
//    for (int i=0; i<products.size(); i++) {
//      
//    }
//    
//    System.out.println(products);
//    System.out.println(commcodes);
    List<CommCode> commcodes = commCodeService.list();
    for (int i=0; i<products.size(); i++) {
      
    }
    
    System.out.println(products);
    System.out.println(commcodes);
    model.addAttribute("products", products);
  }
  
  @PostMapping("add")
  public String add(Product product) throws Exception {
	  productService.insert(product);
	  return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
//    System.out.println("컨트롤러에 디테일은 이거거든요:" + no);
//    Product product = productService.get(no);
//    model.addAttribute("product", product);
    
  }
   
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    productService.delete(no);
    return "redirect:list";
  }
  
  @PostMapping("update")
  public String update(Product product) throws Exception {
    productService.update(product);
    return "redirect:list";
  }
  
}
