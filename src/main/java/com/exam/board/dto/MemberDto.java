package com.exam.board.dto;


import java.sql.Timestamp;

import lombok.Data;

@Data
public class MemberDto {
	private int num; 
	private String uid;
	private String upw; 
	private String uname;
	private String uemail; 
	private String gender; 
	private String ubirthday;
	private String uzipcode;
	private String uaddr;
	private String uhobby;
	private String ujob; 
	private Timestamp jointm;
	
}
