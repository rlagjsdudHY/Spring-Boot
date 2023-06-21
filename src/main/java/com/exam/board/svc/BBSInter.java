package com.exam.board.svc;

import java.util.List;
import java.util.Map;

import com.exam.board.dto.BBSdto;

public interface BBSInter {
	
	//게시판목록보기
	public List<BBSdto> BBSlist();
	//게시판글상세보기
	public List<BBSdto> BBSlistResult(String num);
	//게시판글입력
	public List<BBSdto> boardInsert(Map<String,String> map);
}
