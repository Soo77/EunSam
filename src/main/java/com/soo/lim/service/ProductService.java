package com.soo.lim.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.soo.lim.domain.Product;

@Service
public interface ProductService {

	List<Product> list() throws Exception;
	void insert(Product product) throws Exception;
	Product get(int no) throws Exception;
	void update(Product product) throws Exception;
	void delete(int no) throws Exception;
	int countAll() throws Exception;
	
}