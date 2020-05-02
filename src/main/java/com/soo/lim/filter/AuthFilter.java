package com.soo.lim.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthFilter implements Filter {

  String[] path;

  @Override
  public void init(FilterConfig filterConfig) throws ServletException {
      System.out.println(filterConfig.getInitParameter("path"));
      path = filterConfig.getInitParameter("path").split(",");
  }

  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
      HttpServletRequest httpReq = (HttpServletRequest) request;
      HttpServletResponse httpResp = (HttpServletResponse) response;

      String pathInfo = httpReq.getPathInfo();
      for (String p : path){
          if (pathInfo.endsWith(p)){
              if (httpReq.getSession().getAttribute("loginUser") == null) {
                  httpResp.sendRedirect("../auth/signin");
                  return;
              } else {
                  // 로그인했으면 브레이크
                  break;
              }
          }
      }
      
      // 로그인 했으면 원래 목적지로 ㄱ
      chain.doFilter(request, response);
  }
}
