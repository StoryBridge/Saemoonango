package com.saemoonango.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.saemoonango.persistence.LocationDAO;
import com.saemoonango.persistence.QuestionDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	private QuestionDAO qDao;
	@Autowired // 스프링프레임워크에서만 작동 프레임워크의 종속성을 피하기 위해선 inject를 사용하자!
	private LocationDAO lDao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);
		System.out.println("HOME CONNECTED..............");
		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@CrossOrigin
	@ResponseBody
	@RequestMapping(value = "/question/{lno}", method = RequestMethod.GET)
	public HashMap<String, Object> question(@PathVariable int lno) throws Exception {
		HashMap<String, Object> questionData = new HashMap<>();
		System.out.println("Question Conneted......");
		System.out.println(qDao.read(lno));
		questionData.put("question", qDao.read(lno));
		return questionData;
	}

	@CrossOrigin
	@ResponseBody
	@RequestMapping(value = "/location", method = RequestMethod.GET)
	public HashMap<String, Object> location() throws Exception {
		HashMap<String, Object> locationData = new HashMap<>();
		System.out.println("Location Loading............");
		System.out.println(lDao.read().toString());
		locationData.put("location", lDao.read());
		return locationData;
	}

	@CrossOrigin
	@ResponseBody
	@RequestMapping(value = "/json", method = RequestMethod.GET)
	public HashMap<String, Object> json() {
		HashMap<String, Object> map = new HashMap<>();
		System.out.println("JSON CONNETED............");
		map.put("abcaa", "ddeeed");
		return map;
	}

	@RequestMapping(value = "/answer", method = RequestMethod.POST)
	public String getAnswer(RedirectAttributes rttr) throws Exception {
		logger.info("getAnswer");
		System.out.println(rttr);
		System.out.println("getAnswer.....");

		// rttr.addFlashAttribute("result", "success");
		return "home";
	}

}
