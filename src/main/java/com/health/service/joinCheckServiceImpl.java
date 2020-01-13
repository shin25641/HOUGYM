package com.health.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.userDAO;
import com.health.dto.userDTO;


@Service
public class joinCheckServiceImpl implements LoginService{

   @Autowired
   private userDAO dao;
   
   @Override
   public int execute(Model model) {
      Map<String, Object> map = model.asMap();
      HttpServletRequest request = (HttpServletRequest) map.get("request");
      userDTO Udto = new userDTO();
      Udto.setAdmin(Integer.parseInt(request.getParameter("Admin")));
      Udto.setUserId(request.getParameter("userId"));
      Udto.setUserPw(request.getParameter("userPw"));
      Udto.setUserEmail(request.getParameter("userEmail"));
      Udto.setUserAge(Integer.parseInt(request.getParameter("userAge")));
      Udto.setUserName(request.getParameter("userName"));
      Udto.setUserHeight(Integer.parseInt(request.getParameter("userHeight")));
      Udto.setUserWeight(Integer.parseInt(request.getParameter("userWeight")));
      Udto.setUserSex(request.getParameter("userSex"));
      
      //time--------------------------------------------
      Date date = new Date();
      String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(date);
      java.util.Date date1=null;
      
      try {
    	 date1 = new SimpleDateFormat("yyyy-MM-dd").parse(currentDate);
      } catch (Exception e) {
    	  e.printStackTrace();  
      }
      java.sql.Date sqlDate1 = new java.sql.Date(date1.getTime());
      Udto.setUserRegDate(sqlDate1);
      //------------------------------------------------------------------
      int result = dao.joinCheck(Udto);
      String joinResult;
      if(result==1) {
         return 1;
         
      } else { 
         return 0;
      }
   }

}