package com.example.demo.Controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.Services.memberService.memberImpl;

@Controller
public class MainController {
	@Resource(name="ServiceMember")
	private memberImpl aa;

	@RequestMapping(value="/")
	public String main(Model model) {
		
		aa.execute(model);
		
		return "index";
	}
}