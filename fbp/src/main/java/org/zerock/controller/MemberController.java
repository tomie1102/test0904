package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
	private MemberService service;

	@PostMapping("/modify")
	public String modify(MemberVO member, RedirectAttributes rttr) {
		log.info("modify : " + member);

		if (service.modify(member)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/member/list";
	}

	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("m_no") Long m_no, Model model) {
		log.info("/get or modify");
		model.addAttribute("list", service.get(m_no));
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("m_no") Long m_no, RedirectAttributes rttr) {
		log.info("remove : " + m_no);
		if (service.remove(m_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/member/list";
	}

	@PostMapping("/register")
	public String register(MemberVO member, RedirectAttributes rttr) {
		log.info("■■■■■■■■■■■■■■■■■■■■■■■■■■■");
		log.info("register : " + member);


		service.register(member);
		rttr.addFlashAttribute("result", member.getM_no());
		return "redirect:/member/list";
	}

	@GetMapping("/register")
	public void register() {

	}
}
