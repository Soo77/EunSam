package com.soo.lim.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.soo.lim.dao.ProductDao;
import com.soo.lim.domain.Product;
import com.soo.lim.service.ProductService;

@Service
public class DefaultProductService implements ProductService{

 
	@Resource
	private ProductDao productDao;
	
	@Override
	public List<Product> list() throws Exception {
		System.out.println("디폴스서비스");
		return productDao.findAll();
	}

    @Override
    public int countAll() throws Exception {
      return productDao.countAll();
      
    }
	
	@Override
	public void insert(Product commCodeGroup) throws Exception {
		productDao.insert(commCodeGroup);
	}

	@Override
	public Product get(int no) throws Exception {
		Product commCodeGroup = productDao.findBy(no);
		if (commCodeGroup == null) {
			throw new Exception("해당 번호의 데이터가 없습니다.");
		}
		return commCodeGroup;
	}

	@Override
	public void update(Product product) throws Exception {
		productDao.update(product);
	}

	@Override
	public void delete(int no) throws Exception {
		if (productDao.delete(no) == 0) {
			throw new Exception("해당 데이터가 없습니다!");
		}
	}

}


	




