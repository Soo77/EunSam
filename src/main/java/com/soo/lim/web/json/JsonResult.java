package com.soo.lim.web.json;

public class JsonResult {

  public static final String SUCCESS = "success";
  public static final String FAILURE = "failure";

  private String state;
  private String message;
  private Object result;

  @Override
  public String toString() {
    return "JsonResult{" +
        "state='" + state + ", message='" + message + ", result=" + result + "}";
  }

  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public Object getResult() {
    return result;
  }

  public void setResult(Object result) {
    this.result = result;
  }
}
