package com.exam.board.svc;

import java.util.List;
import java.util.Map;

import com.exam.board.dto.MemberDto;

public interface MemberInter {
	//회원목록보기
	public List<MemberDto> memberList();
	
	//회원가입
	public List<MemberDto> applyInsert(Map<String,String> map);
	
	//id중복체크
	public int idCheck(String uid);
	
	//로그인체크
	public int loginProc(String uid,String upw);
	
	//게시글에 유저정보 넣기
	public List<MemberDto> userInfo(String uid);

}
