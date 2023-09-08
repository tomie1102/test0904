package org.zerock.domain;

import java.util.List;

import lombok.Data;

@Data
public class TeamVO {
	private Long t_no;
	private String t_name;
	private String t_league;
	private String t_photo;
	private String t_stadium;
	private String t_description;
	
	private List<TeamAttachVO> attachList;

}
