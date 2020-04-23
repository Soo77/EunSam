package com.soo.lim.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.soo.lim.dao.TestDao;
import com.soo.lim.domain.Test;
import com.soo.lim.service.TestService;

@Service
public class DefaultTestService implements TestService{

 
	@Resource
	private TestDao testDao;
	
	@Override
	public List<Test> list() throws Exception {
		System.out.println("디폴스서비스");
		return testDao.findAll();
	}

    @Override
    public int countAll() throws Exception {
      return testDao.countAll();
      
    }
	
	@Override
	public void insert(Test commCodeGroup) throws Exception {
		testDao.insert(commCodeGroup);
	}

	@Override
	public Test get(int no) throws Exception {
		Test commCodeGroup = testDao.findBy(no);
		if (commCodeGroup == null) {
			throw new Exception("해당 번호의 데이터가 없습니다.");
		}
		return commCodeGroup;
	}

	@Override
	public void update(Test test) throws Exception {
		testDao.update(test);
	}

	@Override
	public void delete(int no) throws Exception {
		if (testDao.delete(no) == 0) {
			throw new Exception("해당 데이터가 없습니다!");
		}
	}

}


	




