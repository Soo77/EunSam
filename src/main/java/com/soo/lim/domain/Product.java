package com.soo.lim.domain;

import java.io.Serializable;

public class Product implements Serializable {

  private static final long serialVersionUID = 1L;
  
  private int productNo;
  private String productName;
  private int productPrice;
  private String productDetail;
  private String category;
  
  
  public int getProductNo() {
    return productNo;
  }
  public void setProductNo(int productNo) {
    this.productNo = productNo;
  }
  public String getProductName() {
    return productName;
  }
  public void setProductName(String productName) {
    this.productName = productName;
  }
  public int getProductPrice() {
    return productPrice;
  }
  public void setProductPrice(int productPrice) {
    this.productPrice = productPrice;
  }
  public String getProductDetail() {
    return productDetail;
  }
  public void setProductDetail(String productDetail) {
    this.productDetail = productDetail;
  }
  public String getCategory() {
    return category;
  }
  public void setCategory(String category) {
    this.category = category;
  }
  @Override
  public String toString() {
    return "Product [productNo=" + productNo + ", productName=" + productName + ", productPrice="
        + productPrice + ", productDetail=" + productDetail + ", category=" + category + "]";
  }
  
  
}
