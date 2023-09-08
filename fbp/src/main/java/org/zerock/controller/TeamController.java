package org.zerock.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.TeamAttachVO;
import org.zerock.domain.TeamVO;
import org.zerock.service.TeamService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/team/*")
@AllArgsConstructor
public class TeamController {
	private TeamService service;

	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", service.getList());
	}

	@PostMapping("/modify")
	public String modify(TeamVO team, RedirectAttributes rttr) {
		log.info("modify : " + team);

		if (service.modify(team)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/team/list";
	}

	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("t_no") Long t_no, Model model) {
		log.info("/get or modify");
		model.addAttribute("list", service.get(t_no));
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("t_no") Long t_no, RedirectAttributes rttr) {
		log.info("remove : " + t_no);
		if (service.remove(t_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/team/list";
	}

	@PostMapping("/register")
	public String register(TeamVO team, RedirectAttributes rttr) {
		log.info("■■■■■■■■■■■■■■■■■■■■■■■■■■■");
		log.info("register : " + team);

		if (team.getAttachList() != null) {
			team.getAttachList().forEach(attach -> log.info(attach));
		}
		log.info("■■■■■■■■■■■■■■■■■■■■■■■■■■■");

		service.register(team);
		rttr.addFlashAttribute("result", team.getT_no());
		return "redirect:/team/list";
	}

	@GetMapping("/register")
	public void register() {

	}

	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<TeamAttachVO>> getAttachList(Long bno) {
		log.info("getAttachList " + bno);
		return new ResponseEntity<>(service.getAttachList(bno), HttpStatus.OK);
	}

}
