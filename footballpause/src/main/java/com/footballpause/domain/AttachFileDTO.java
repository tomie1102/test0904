package com.footballpause.domain;

import lombok.Data;

@Data
public class AttachFileDTO {
	private String uuid;
	private String uploadPath;
	private String fileName;
	private String fileType;
	private boolean image;
}
