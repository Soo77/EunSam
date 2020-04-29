package com.soo.lim.dao;

import java.util.List;
import com.soo.lim.domain.Product;

public interface ProductDao {

  int insert(Product product) throws Exception;
  List<Product> findAll() throws Exception;
  Product findBy(int no) throws Exception;
  int update(Product product) throws Exception;
  int delete(int no) throws Exception;
  int countAll() throws Exception;
  
  String findCodeName(String codeId) throws Exception;
}
