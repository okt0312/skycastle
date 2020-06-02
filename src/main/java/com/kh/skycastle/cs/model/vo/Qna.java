package com.kh.skycastle.cs.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Qna {

	private int qnaNo;
	private String memberYn;	// 회원여부 
	private String userName;
	private String email;
	private int userNo;
	private String qnaTitle;
	private String qnaContent;
	private Date qnaDate;
	private String qnaReply;
	private String originName;
	private String changeName;
	private String status;
}
