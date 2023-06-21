package com.exam.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.exam.board.dto.BBSdto;

@Mapper
public interface BBSDao {

	public List<BBSdto> BBSlist(); //게시글리스트보기
	
	public List<BBSdto> BBSlistResult(String num); //게시글상세보기
	
	public List<BBSdto> boardInsert(Map<String,String>map); //게시글 쓰기
}
