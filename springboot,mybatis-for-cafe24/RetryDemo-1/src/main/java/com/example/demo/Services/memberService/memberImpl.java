package com.example.demo.Services.memberService;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.DAO.MainMapper;
import com.example.demo.DTO.MemberDTO;

@Service("ServiceMember")
public class memberImpl implements ServiceMember{
	
	@Resource(name="daoDB")
	private MainMapper mm;
	
	@Override
	public int execute(Model model) {
		
		List<MemberDTO> testDto = mm.selectMember();
		System.out.println("값 확인 : "+mm.selectMember());
		model.addAttribute("test",testDto);
		
		return 0;
	}

}