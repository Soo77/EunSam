package com.soo.lim.domain;

import java.io.Serializable;

public class CommCodeGroup implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private String groupcodeId;
  private String groupcodeName;
  
  public String getGroupcodeId() {
    return groupcodeId;
  }
  public void setGroupcodeId(String groupcodeId) {
    this.groupcodeId = groupcodeId;
  }
  public String getGroupcodeName() {
    return groupcodeName;
  }
  public void setGroupcodeName(String groupcodeName) {
    this.groupcodeName = groupcodeName;
  }
  
  @Override
  public String toString() {
    return "CommCodeGroup [groupcodeId=" + groupcodeId + ", groupcodeName=" + groupcodeName + "]";
  }
  
}
