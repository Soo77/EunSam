package com.soo.lim.domain;

import java.io.Serializable;

public class CommCode implements Serializable {

  private static final long serialVersionUID = 1L;
  
  private String groupcodeId;
  private String codeId;
  private String codeName;
  
  public String getGroupcodeId() {
    return groupcodeId;
  }
  public void setGroupcodeId(String groupcodeId) {
    this.groupcodeId = groupcodeId;
  }
  public String getCodeId() {
    return codeId;
  }
  public void setCodeId(String codeId) {
    this.codeId = codeId;
  }
  public String getCodeName() {
    return codeName;
  }
  public void setCodeName(String codeName) {
    this.codeName = codeName;
  }
  @Override
  public String toString() {
    return "CommCode [groupcodeId=" + groupcodeId + ", codeId=" + codeId + ", codeName=" + codeName
        + "]";
  }
  
}
