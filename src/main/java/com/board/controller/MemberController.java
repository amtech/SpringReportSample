package com.board.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.domain.MemberVO;
import com.board.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Inject
	private MemberService service;
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
	 logger.info("post login");
	 
	 HttpSession session = req.getSession();
	 
	 MemberVO login = service.login(vo);
	 if(login == null) {
	  session.setAttribute("member", null);
	  logger.info("로그인 실패 ");
	  rttr.addFlashAttribute("msg",false);
	  return "redirect:/";
	 } else {
	  session.setAttribute("member", login);
	  logger.info("로그인 성공 ");
	  return "redirect:/board/listPageSearch?num=1";
	 }
	 
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		logger.info("get logout");
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception{
		logger.info("get Register");
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception{
		logger.info("get Register");
		
		service.register(vo);
		
		return "redirect:/";
	}
	
}