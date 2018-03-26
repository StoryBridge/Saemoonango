package com.saemoonango.persistence;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.saemoonangodomain.LocationVO;
import com.saemoonangodomain.QuestionVO;

@Repository
public class LocationDAOImpl implements QuestionDAO {
	
	@Inject
	private SqlSessionTemplate sqlsession;

	@Override
	public void insert(LocationVO vo) throws Exception {
		// TODO Auto-generated method stub

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
	public List<QuestionVO> read(int lno) throws Exception {
		return sqlsession.selectList("com.zzennam.persistence.QuestionMapper.read", lno);

	}

}
