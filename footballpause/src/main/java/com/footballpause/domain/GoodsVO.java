package com.footballpause.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class GoodsVO {
		
		private long g_no;
		private String g_name;
		private String g_league;
		private String g_team;
		private String g_brand;
		private long g_price;
		private String g_category;
		private long g_stock;
		private Date g_regdate;
		private String g_fileName;

		/*첨부파일 : 기존의 GoodsVO는 등록시 한 번에 GoodsAttachVO를 처리할 수 있도록 추가 */
		private List<GoodsAttachVO> attachList;
}
