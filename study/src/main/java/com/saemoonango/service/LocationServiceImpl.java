package com.saemoonango.service;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Repository;
import com.saemoonango.persistence.LocationDAO;
import com.saemoonangodomain.LocationVO;

@Repository
public class LocationServiceImpl implements LocationService {

	@Inject
	private LocationDAO ldao;

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
	public List<LocationVO> read() throws Exception {
		return ldao.read();

	}

}
