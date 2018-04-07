package com.saemoonango.service;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.saemoonango.persistence.MemberDetailDAO;
import com.saemoonangodomain.LocationVO;
import com.saemoonangodomain.MemberDetailVO;

@Repository
public class MemberDetailServiceImpl implements MemberDetailService {
	@Inject
	private MemberDetailDAO dao;

	@Override
	public void insert(MemberDetailVO vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public void update(LocationVO vo) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(LocationVO vo) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<LocationVO> read() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean certificate(MemberDetailVO vo) throws Exception {
		return dao.certificate(vo);
	}

}
