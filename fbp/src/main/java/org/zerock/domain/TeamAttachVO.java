package org.zerock.domain;

import lombok.Data;

@Data
public class TeamAttachVO {

	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	
	private Long t_no;
	
}
