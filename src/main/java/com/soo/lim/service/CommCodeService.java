package com.soo.lim.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.soo.lim.domain.CommCode;

@Service
public interface CommCodeService {

	List<CommCode> list() throws Exception;
	void insert(CommCode commCode) throws Exception;
	CommCode get(int no) throws Exception;
	void update(CommCode commCode) throws Exception;
	void delete(int no) throws Exception;
	int countAll() throws Exception;
}