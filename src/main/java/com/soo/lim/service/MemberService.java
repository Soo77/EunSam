package com.soo.lim.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.soo.lim.domain.Member;

@Service
public interface MemberService {

  List<Member> list() throws Exception;
  void insert(Member member) throws Exception;
  Member get(String id, String password) throws Exception;
}
