package com.soo.lim.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.soo.lim.domain.Test;

@Service
public interface TestService {

	List<Test> list() throws Exception;
	void insert(Test test) throws Exception;
	Test get(int no) throws Exception;
	void update(Test test) throws Exception;
	void delete(int no) throws Exception;
	int countAll() throws Exception;
}
