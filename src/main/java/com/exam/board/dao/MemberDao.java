package com.exam.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.exam.board.dto.MemberDto;

@Mapper
public interface MemberDao {
	
	public List<MemberDto> memberList();
	
	public List<MemberDto> applyInsert(Map<String,String> map);//회원가입
	
	public int idCheck(String uid); // 아이디 중복체크
	
	public int loginProc(String uid,String upw); //로그인체크
	
	public List<MemberDto> userInfo(String uid);  //게시글에 유저정보넣기 
	
	
}
