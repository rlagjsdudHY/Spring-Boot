package com.exam.board.dto;


import java.sql.Timestamp;

import lombok.Data;

@Data
public class BBSdto {
	
	private int num;    //글번호
	private String uid; //작성자ID
	private String uname; 
	private String subject; //글제목
	private String content; //글내용
	private int pos;  //답변글용(position, 답변글 순서)
	private int ref;  //답변글용(reference, 원본글/답변글 기준)
	private int depth;  //답변글용(답변글 들여쓰기)
	private Timestamp regtm;	// 게시글 등록시간
	private String ip;        // 게시글 작성자 IP주소
	private int readcnt;   // 조회수
	private String filename;  // 첨부파일
	private int filesize;         // 첨부파일 크기

}
