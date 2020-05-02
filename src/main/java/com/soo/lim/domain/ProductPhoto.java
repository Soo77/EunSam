package com.soo.lim.domain;

import java.io.Serializable;

public class ProductPhoto implements Serializable {
  
  private static final long serialVersionUID = 1L;
  
  private int productPhotoNo;
  private int productNo;
  private String filePath;
  
  public int getProductPhotoNo() {
    return productPhotoNo;
  }
  public void setProductPhotoNo(int productPhotoNo) {
    this.productPhotoNo = productPhotoNo;
  }
  public int getProductNo() {
    return productNo;
  }
  public void setProductNo(int productNo) {
    this.productNo = productNo;
  }
  public String getFilePath() {
    return filePath;
  }
  public void setFilePath(String filePath) {
    this.filePath = filePath;
  }
  @Override
  public String toString() {
    return "ProductPhoto [productPhotoNo=" + productPhotoNo + ", productNo=" + productNo
        + ", filePath=" + filePath + "]";
  }
  
  
}
