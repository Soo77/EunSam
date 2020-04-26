package com.soo.lim.service;

import com.soo.lim.domain.Member;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface MemberService {

	List<Member> list() throws Exception;
}
