package com.saemoonango.service;

import java.util.List;

import com.saemoonango.domain.LocationVO;
import com.saemoonango.domain.QuestionVO;

public interface LocationService {
	public void insert(LocationVO vo) throws Exception;
	
	//public List<MenuVO> select(Integer mno)throws Exception;
	
	public void update(LocationVO vo)throws Exception;
	
	public void delete(LocationVO vo) throws Exception;
	
	public List<LocationVO> read() throws Exception;
}
