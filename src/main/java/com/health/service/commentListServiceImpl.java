package com.health.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.commentDAO;
import com.health.dto.commentDTO;

@Service
public class commentListServiceImpl implements CommentListService{
	@Autowired
	private commentDAO Cdao;
	
	@Override
	public List<commentDTO> execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		List<commentDTO> list_reply = new ArrayList<commentDTO>();
		int num = Integer.parseInt(request.getParameter("num").trim());
		list_reply = Cdao.commentlist(num);

		return list_reply;
	}
}