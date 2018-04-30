package com.saemoonango.service;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.saemoonango.persistence.MemberDAO;
import com.saemoonango.persistence.MemberDetailDAO;
import com.saemoonangodomain.LocationVO;
import com.saemoonangodomain.MemberDetailVO;
import com.saemoonangodomain.MemberVO;

@Repository
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override
	public void totalPoint() throws Exception {
		// TODO Auto-generated method stub
		dao.totalPoint();		
	}

	@Override
	public List<MemberVO> read(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(id);
	}

	@Override
	public void myLocation(MemberVO vo) throws Exception {
		dao.myLocation(vo);		
	}


	

}
