package com.health.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.userDAO;
import com.health.dto.boardpagingDTO;
import com.health.dto.userDTO;

@Service
public class UserListServiceImpl implements LoginService{
	@Autowired
	private userDAO dao;

	@Override
	public int execute(Model model) {
		List<userDTO> testlist = dao.userList(pagingNum(model));
		System.out.println(testlist.get(0).toString());
		model.addAttribute("userList",dao.userList(pagingNum(model)));
		return 0;
	}
	
	public boardpagingDTO pagingNum(Model model) {
		
		int start = 0;
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		if(request.getParameter("start") == null) {
			start = 0;
		}else {
			start = Integer.parseInt(request.getParameter("start"));
		}
		
		if(start == 0) start = 1;
		boardpagingDTO pc = new boardpagingDTO();
		int pageNum = 10;
		int totalPage = getTotalPage_user();
		int totEndPage = totalPage/pageNum + (totalPage%pageNum == 0 ? 0 : 1);
		
		
		int startPage = (start - 1) * pageNum + 1;
		int endPage = pageNum * start;
		
		System.out.println("1="+totEndPage);
		System.out.println("2="+startPage);
		System.out.println("3="+endPage);
		pc.setTotEndPage(totEndPage);
		pc.setStartPage(startPage);
		pc.setEndPage(endPage);
		model.addAttribute("pc", pc);
		return pc;
	}

	private int getTotalPage_user() {
		return dao.getTotalPage_user();
	}
}
