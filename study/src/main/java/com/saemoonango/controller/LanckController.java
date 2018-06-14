package com.saemoonango.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.saemoonango.service.MemberService;

@Controller
public class LanckController {
	@Inject
	private MemberService mService;
	
	@CrossOrigin
	@ResponseBody
	@RequestMapping(value = "/rank", method = RequestMethod.GET)
	public HashMap<String, Object> rank() throws Exception {
		HashMap<String, Object> rank = new HashMap<>();
		System.out.println("connect rank.....");
		rank.put("rank", mService.memberList());
		return rank;
	}

	@RequestMapping(value = "/chart", method = RequestMethod.GET)
	public String home() {				
		return "chart";
	}



}