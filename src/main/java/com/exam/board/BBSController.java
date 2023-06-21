package com.exam.board;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.board.svc.BBSInter;
import com.exam.board.svc.MemberInter;

@Controller
public class BBSController {
	
	//게시판테이블쪽 Dao
	@Autowired
	private BBSInter bbsInter;
	
	//멤버쪽 Dao
	@Autowired
	private MemberInter memberInter;
	
	@RequestMapping("/main")
	public String mtdList(Model model) {
		model.addAttribute("BBSlist",bbsInter.BBSlist());
		return "main";
	}
	@RequestMapping("/result") // 게시글 상세보기 미완성
	public String mtdResult(HttpServletRequest req, Model model) {
			String num = req.getParameter("num");
			model.addAttribute("BBSlistResult", bbsInter.BBSlistResult(num));
		
		return "/bbs/result";
	}
	@RequestMapping("/write") //글쓰기 페이지 진입 model값 넣기 에러남
	public  String mtdWrith(Model model , HttpServletRequest req) {
		String uid = (String) req.getSession().getAttribute("uidSession");
		System.out.println(uid);
			model.addAttribute("userInfo",memberInter.userInfo(uid));
		
		return "write";
	}
	
	@RequestMapping("/writeProc") //글쓰기 등록
	public String writeProc(Model model, HttpServletRequest req) {
		String uid = req.getParameter("uid");
		String subject = req.getParameter("subject");
		String content = req.getParameter("content");

		try {
			Map<String,String> map = new HashMap<>();
			map.put("item1", uid);
			map.put("item2", subject);
			map.put("item3", content);
			bbsInter.boardInsert(map);
		} catch (Exception e) {
			e.getMessage();
		}
		
		
		return "redirect:main";
	}
	

}
