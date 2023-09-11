package org.zerock.domain;

import java.sql.Date;
import java.util.List;

import lombok.Data;
@Data
public class NewsVO {
	
	private Long n_no;
	private String n_title;
	private String n_content;
	private String n_writer;
	private Date n_regdate;
	private Date n_updatedate;
	
	private List<NewsAttachVO> attachList;
}
