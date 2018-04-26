package com.saemoonango.service;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.saemoonango.persistence.MemberDAO;
import com.saemoonango.persistence.MemberDetailDAO;
import com.saemoonangodomain.LocationVO;
import com.saemoonangodomain.MemberDetailVO;

@Repository
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override
	public void totalPoint() throws Exception {
		// TODO Auto-generated method stub
		dao.totalPoint();		
	}


	

}
