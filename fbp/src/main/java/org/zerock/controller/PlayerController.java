//package org.zerock.controller;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.zerock.service.PlayerService;
//
//import lombok.AllArgsConstructor;
//import lombok.extern.log4j.Log4j2;
//
//@Controller
//@Log4j2
//@RequestMapping("/player/*")
//@AllArgsConstructor
//public class PlayerController {
//	private PlayerService service;
//	
//	@GetMapping("/list")
//	public void list(Model model) {
//		log.info("list");
//		model.addAttribute("list",service.getList());
//	}
//
//}
