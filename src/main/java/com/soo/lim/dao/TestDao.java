package com.soo.lim.dao;

import java.util.List;
import com.soo.lim.domain.Test;

public interface TestDao {

  int insert(Test test) throws Exception;
  List<Test> findAll() throws Exception;
  Test findBy(int no) throws Exception;
  int update(Test test) throws Exception;
  int delete(int no) throws Exception;
  int countAll() throws Exception;
}
