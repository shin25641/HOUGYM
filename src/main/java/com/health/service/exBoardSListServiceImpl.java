package com.health.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.exBoardDAO;
import com.health.dto.exBoardSDTO;
@Service
public class exBoardSListServiceImpl implements exBoardService{

	@Autowired
	public exBoardDAO dao;
	@Override
	public void execute(Model model) {
		model.addAttribute("exSlist",dao.exSlist());
	}
	
}
