package com.exam.board.svc;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.board.dao.MemberDao;
import com.exam.board.dto.MemberDto;

@Service
public class MemberImp implements MemberInter {
	
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public List<MemberDto> memberList(){
		
		return memberDao.memberList();
	}
	@Override //회원가입
	public List<MemberDto> applyInsert(Map<String,String> map){
		
		return memberDao.applyInsert(map);
	}
	@Override // 아이디중복체크
	public int idCheck(String uid) {
		return memberDao.idCheck(uid);
	}
	@Override // 로그인체크
	public int loginProc(String uid,String upw) {
		return memberDao.loginProc(uid,upw);
	}
	@Override // 게시글에 유저정보넣기
	public List<MemberDto> userInfo(String uid) {
		return memberDao.userInfo(uid);
	}


}
