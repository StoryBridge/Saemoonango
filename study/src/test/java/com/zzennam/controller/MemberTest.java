package com.zzennam.controller;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.saemoonango.service.MemberService;
import com.saemoonangodomain.MemberVO;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class MemberTest {
	
	@Inject
	private MemberService mService; 
	
	@Test
	public void myLoation() throws Exception{
		MemberVO vo = new MemberVO();
		vo.setId("4");
		vo.setLng(37.0);
		vo.setLat(127.0);
		System.out.println(vo.toString());
		System.out.println("memberVo test...............");
		mService.myLocation(vo);
	}

	@Test
	public void test() {
		fail("Not yet implemented");
	}

}
