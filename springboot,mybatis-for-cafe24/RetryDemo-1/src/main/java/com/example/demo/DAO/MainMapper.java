package com.example.demo.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.DTO.MemberDTO;

@Repository("daoDB")
public interface MainMapper {
	
	public List<MemberDTO> selectMember();
	
}