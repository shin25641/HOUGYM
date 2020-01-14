package com.health.service;

import java.awt.Desktop;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.exBoardDAO;
import com.health.dto.exBoardSDTO;
@Service
public class exBoardSModifyServiceImpl implements exBoardService{
	@Autowired
	private exBoardDAO dao;
	
	@Override
	public void execute(Model model) {
		Map<String,Object>map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		exBoardSDTO Sdto = new exBoardSDTO();
		
		Sdto.setExSPart(Integer.parseInt(request.getParameter("exSPart")));
		
		String str = request.getParameter("exSLink");
if(str.contains("youtube")) {
	Sdto.setExSLink(str);
	System.out.println("링크변경 없음"+str);
}else{
		String[] you = str.split("/");
		int size = you.length-1;
		String y = "https://youtube.com/embed/"+you[size];
		
		Sdto.setExSLink(y);
		System.out.println("링크변경 있음"+y);
}
		dao.exBoardS_modify(Sdto);
	}
}
