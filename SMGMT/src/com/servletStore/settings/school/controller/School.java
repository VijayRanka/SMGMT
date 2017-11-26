package com.servletStore.settings.school.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servletStore.settings.school.model.SchoolDAO;
import com.servletStore.settings.school.model.SchoolImpl;
import com.servletStore.settings.school.model.SchoolPOJO;


public class School extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		SchoolPOJO schoolPojo = new SchoolPOJO();
		SchoolDAO schoolDAO = new SchoolImpl();
		
		if(request.getParameter("SchoolSubmitBtn")!=null)
		{
		
			String schoolName = request.getParameter("school_name").toUpperCase().trim();
			String schoolSection = request.getParameter("school_section");
			String schoolAddress = request.getParameter("school_address").trim();
			String schoolContact = request.getParameter("school_contact").trim();
			String schoolShift = request.getParameter("school_shift");
			
			System.out.println(schoolName + schoolSection + schoolAddress + schoolContact + schoolShift);
			
		
			schoolPojo.setName(schoolName);
			schoolPojo.setSection_id(Integer.parseInt(schoolSection));
			schoolPojo.setAddress(schoolAddress);
			schoolPojo.setContact_no(schoolContact);
			schoolPojo.setShift(schoolShift);
			schoolPojo.setAlias_name("-");
			
			schoolDAO.addSchool(schoolPojo);
		
		}
		
		
		
		
		
	}

}
