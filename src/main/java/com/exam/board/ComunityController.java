package com.exam.board;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.board.svc.MemberInter;

@Controller
public class ComunityController {

	@Autowired
	private MemberInter memberInter;
	
	@Autowired //세션을 가져오기위한코드
	private HttpServletRequest request;
	
	@RequestMapping("/index")
	public String root() {
		
		return "index";
	}

	@RequestMapping("/apply")
	public String mtdApply(Model model, HttpServletRequest req) {
		
		return "apply";
	}
	@RequestMapping("/applyProc")
	public String mtdApplyProc(Model model, HttpServletRequest req) {
		
		String uid = req.getParameter("uid");
		String upw = req.getParameter("upw");
		String uname = req.getParameter("uname");
		String uemail = req.getParameter("uemail");
		String gender = req.getParameter("gender");
		String ubirthday = req.getParameter("ubirthday");
		String uzipcode = req.getParameter("uzipcode");
		String uaddr = req.getParameter("uaddr");
		String uhobby = req.getParameter("uhobby");
		String ujob = req.getParameter("ujob");

		try {
			Map<String,String> map = new HashMap<>();
			map.put("item1", uid);
			map.put("item2", upw);
			map.put("item3", uname);
			map.put("item4", uemail);
			map.put("item5", gender);
			map.put("item6", ubirthday);
			map.put("item7", uzipcode);
			map.put("item8", uaddr);
			map.put("item9", uhobby);
			map.put("item10", ujob);
			
			model.addAttribute(req);

			memberInter.applyInsert(map);
			
		} catch (Exception e) {
			e.getMessage();
		}
		
		return "apply";
	}
	
	@RequestMapping("/idCheck") //ID중복검사
	public String mtdIdcheck(Model model , HttpServletRequest req) {
		String uid = req.getParameter("uid");
		try {
			Integer result = memberInter.idCheck(uid);
			System.out.println(result); 
			String res = null;
		 	if (result >= 1) {
		 		System.out.println("hi");
		 		res = "사용이 불가능합니다";
			}else if (result == 0){
				System.out.println("hello");
				res = "사용이 가능합니다";
			}
			System.out.println(res);
			model.addAttribute("res",res);
		} catch (Exception e) {
			 e.printStackTrace();
		}
		
		return "apply";
	}
	
	@RequestMapping("/login") //로그인페이지
	public String mtdLogin(Model model , HttpServletRequest req) {
		
		return "login";
	}
	
	@RequestMapping("/loginProc") //로그인 처리
	public String loginProc(Model model , HttpServletRequest req) {
		String uid = req.getParameter("uid");
		String upw = req.getParameter("upw");
		System.out.println(uid);
		System.out.println(upw);
		
		try {
			int result = memberInter.loginProc(uid,upw);
			System.out.println(result);
			if (result == 1) {
					System.out.println("나야");
					//세션 객체 가져오기
					HttpSession session = req.getSession();
					// 세션에 값을 저장
			        session.setAttribute("uidSession", uid);
			} else {
				System.out.println("아무것도없음");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		return "redirect:main";
	}
	@RequestMapping("/logout") //로그아웃처리
	public String logout(HttpServletRequest req) {
	    HttpSession session = req.getSession();
	    session.invalidate(); // 세션 무효화

	    return "redirect:/login"; // 로그인 페이지로 리다이렉트
	}
	
	
}
