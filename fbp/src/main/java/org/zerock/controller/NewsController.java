package org.zerock.controller;

import java.util.List;

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
import org.zerock.domain.BoardAttachVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.NewsAttachVO;
import org.zerock.domain.NewsVO;
import org.zerock.service.NewsService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/news/*")
@AllArgsConstructor
public class NewsController {

	private NewsService service;

	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", service.getList());
	}

	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("n_no") Long n_no, Model model) {
		log.info("/get or modify");
		model.addAttribute("list", service.get(n_no));
	}

	@PostMapping("/register")
	public String register(NewsVO news, RedirectAttributes rttr) {
		log.info("■■■■■■■■■■■■■■■■■■■■■■■■■■■");
		log.info("register : " + news);

		if (news.getAttachList() != null) {
			news.getAttachList().forEach(attach -> log.info(attach));
		}
		log.info("■■■■■■■■■■■■■■■■■■■■■■■■■■■");

		service.register(news);
		rttr.addFlashAttribute("result", news.getN_no());
		return "redirect:/news/list";
	}

	@GetMapping("/register")
	public void register() {

	}

	@PostMapping("/modify")
	public String modify(NewsVO news, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify : " + news);

		if (service.modify(news)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/news/list" + cri.getListLink();
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("n_no") Long n_no, @ModelAttribute("cri") Criteria cri,
			RedirectAttributes rttr) {
		log.info("remove : " + n_no);

		List<NewsAttachVO> attachList = service.getAttachList(n_no);

		if (service.remove(n_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/news/list" + cri.getListLink();
		
	}
}
