package com.soo.lim.dao;

import java.util.List;
import com.soo.lim.domain.CommCode;

public interface CommCodeDao {

  int insert(CommCode commCode) throws Exception;
  List<CommCode> findAll() throws Exception;
  CommCode findBy(int no) throws Exception;
  int update(CommCode commCode) throws Exception;
  int delete(int no) throws Exception;
  int countAll() throws Exception;
}
