package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.commentDAO;
import com.health.dto.commentDTO;

@Service
public class commentModifyCheckServiceImpl implements CommentService{
	@Autowired
	private commentDAO Cdao;
	
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		commentDTO Cdto = new commentDTO();
		Cdto.setCommentnum(Integer.parseInt(request.getParameter("MocommentNum")));
		Cdto.setCommentation(request.getParameter("Mocommentation"));
		return Cdao.commentmodifychk(Cdto);
	}
}