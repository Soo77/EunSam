package com.soo.lim.domain;

public class Member {
  
  private int no;
  private String password;
  private String name;
  private String address;
  private String addressDetail;
  private String cardNo;
  private String email;
  private String moblieNo;

  public int getNo() {
    return no;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getAddressDetail() {
    return addressDetail;
  }

  public void setAddressDetail(String addressDetail) {
    this.addressDetail = addressDetail;
  }

  public String getCardNo() {
    return cardNo;
  }

  public void setCardNo(String cardNo) {
    this.cardNo = cardNo;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getMoblieNo() {
    return moblieNo;
  }

  public void setMoblieNo(String moblieNo) {
    this.moblieNo = moblieNo;
  }
}
