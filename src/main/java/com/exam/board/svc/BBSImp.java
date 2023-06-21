package com.exam.board.svc;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.board.dao.BBSDao;
import com.exam.board.dto.BBSdto;
@Service
public class BBSImp implements BBSInter {
	@Autowired
	private BBSDao bbsDao;
	
	@Override //게시글리스트보기
	public List<BBSdto> BBSlist(){
		
		return  bbsDao.BBSlist();
	}
	@Override //게시글상세보기
	public List<BBSdto> BBSlistResult(String num){
		return bbsDao.BBSlistResult(num);
	}
	@Override //게시글 쓰기
	public List<BBSdto> boardInsert(Map<String,String>map){
		return bbsDao.boardInsert(map);
	}
	
	
}
