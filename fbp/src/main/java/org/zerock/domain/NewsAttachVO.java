package org.zerock.domain;

import lombok.Data;

@Data
public class NewsAttachVO {
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	private Long n_no;
	
	
	
}
