package com.servletStore.settings.standard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servletStore.settings.standard.model.StandardDAO;
import com.servletStore.settings.standard.model.StandardImpl;
import com.servletStore.settings.standard.model.StandardPOJO;

public class AddStandard extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String std_name = request.getParameter("standard_name");
		
		StandardPOJO stdPojo = new StandardPOJO();
		stdPojo.setName(std_name);
		
		StandardDAO stdDao = new StandardImpl();
		int i = stdDao.addStandard(stdPojo);
		
		if(i>0){
			System.out.println("insert success");
		}
		else{
			System.out.println("insert fail");
		}
		
		response.sendRedirect("View/Settings/standard/addStandard.jsp");
	}

}
