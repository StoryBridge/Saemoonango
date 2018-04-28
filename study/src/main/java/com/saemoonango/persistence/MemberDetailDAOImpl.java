package com.saemoonango.persistence;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.saemoonangodomain.LocationVO;
import com.saemoonangodomain.MemberDetailVO;

@Repository
public class MemberDetailDAOImpl implements MemberDetailDAO {
	@Inject
	private SqlSessionTemplate sqlsession;

	@Override
	public void insert(MemberDetailVO vo) throws Exception {
		sqlsession.insert("com.zzennam.persistence.MemberDetailMapper.insert", vo);
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
		int certi = Integer.parseInt(sqlsession.selectList("com.zzennam.persistence.MemberDetailMapper.certificate", vo).get(0).toString());
		System.out.println(certi);
		if (certi > 0) {
			return true;
		} else
			return false;

	}



}
