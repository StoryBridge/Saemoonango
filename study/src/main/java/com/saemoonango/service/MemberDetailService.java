package com.saemoonango.service;

import java.util.List;

import com.saemoonangodomain.LocationVO;
import com.saemoonangodomain.MemberDetailVO;

public interface MemberDetailService {
	public void insert(MemberDetailVO vo) throws Exception;
	
	//public List<MenuVO> select(Integer mno)throws Exception;
	
	public void update(LocationVO vo)throws Exception;
	
	public void delete(LocationVO vo) throws Exception;
	
	public List<LocationVO> read() throws Exception;
	
	public boolean certificate(MemberDetailVO vo) throws Exception;
}
