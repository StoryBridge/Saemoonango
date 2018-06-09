package com.zzennam.controller;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.saemoonango.service.MemberService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class RankTest {
	@Inject
	private MemberService mServ;

	@Test
	public void rankList() throws Exception{
		System.out.println(mServ.memberList());	
		
	}

}
