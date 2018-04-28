package com.saemoonango.persistence;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.saemoonangodomain.LocationVO;
import com.saemoonangodomain.MemberVO;


@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	private SqlSessionTemplate sqlsession;

	@Override
	public void totalPoint() throws Exception {
		// TODO Auto-generated method stub
		sqlsession.update("com.zzennam.persistence.MemberMapper.totalPoint");
	}

	@Override
	public List<MemberVO> read() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList("com.zzennam.persistence.MemberMapper.read");
	}

	@Override
	public void myLocation(MemberVO vo) throws Exception {
		sqlsession.update("com.zzennam.persistence.MemberMapper.myLocation", vo);		
	}



}
