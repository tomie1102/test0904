package com.footballpause.controller;

import java.security.Provider.Service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.footballpause.domain.Criteria;
import com.footballpause.domain.GoodsAttachVO;
import com.footballpause.domain.GoodsVO;
import com.footballpause.service.GoodsService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/goods/*") // http://localhost/board/메서드~
@AllArgsConstructor
public class GoodsController {

	private GoodsService goodsService;

	/* 상품 조회 */
	@GetMapping("/list")
	public void listGoods(Model model) {

		log.info("list");

		model.addAttribute("list", goodsService.getList());
		// BoardService의 getList()메서드를 실행한 결과를 모델 영역에 list라는 이름으로 추가함
	}

	/* 상품 등록 */
	@PostMapping("/register")
	public String register(GoodsVO goods, RedirectAttributes rttr) {

		log.info("register : " + goods);

		goodsService.register(goods);

		rttr.addFlashAttribute("add_result", goods.getG_name());

		return "redirect:/goods/list";
	}

	@GetMapping("/register")
	public void register() {

	}

	/* 상품 상세 보기(수정하기) */
	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("g_no") Long g_no, Model model) {

		log.info("/get or modify");
		model.addAttribute("list", goodsService.get(g_no));
	}

	@PostMapping("/modify")
	public String modify(GoodsVO goods, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify : " + goods);

		if (goodsService.modify(goods)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/goods/list" + cri.getListLink();
	}
	/* 삭제하기 */
	/*
	 * @PostMapping("/remove") public String remove(@RequestParam("g_no") Long
	 * g_no, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
	 * log.info("remove : " + g_no);
	 * 
	 * List<GoodsAttachVO> attachList = goodsService.getAttachList(g_no);
	 * 
	 * if (goodsService.remove(g_no)) { rttr.addFlashAttribute("result", "success");
	 * }
	 * 
	 * rttr.addAttribute("pageNum", cri.getPageNum()); rttr.addAttribute("amount",
	 * cri.getAmount()); rttr.addAttribute("type", cri.getType());
	 * rttr.addAttribute("keyword", cri.getKeyword());
	 * 
	 * 
	 * return "redirect:/board/list"; return "redirect:/Goods/list" +
	 * cri.getListLink();
	 * 
	 * }
	 */

	@PostMapping("/remove")
	public String remove(@RequestParam("g_no") Long g_no, RedirectAttributes rttr) {
		log.info("remove : " + g_no);
		if (goodsService.remove(g_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/goods/list";
	}

	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<GoodsAttachVO>> getAttachList(Long g_no) {
		log.info("getAttachList " + g_no);
		return new ResponseEntity<>(goodsService.getAttachList(g_no), HttpStatus.OK);
	}
}
