package com.servletStore.settings.school.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
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
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		System.out.println("hello world");
		SchoolPOJO schoolPojo = new SchoolPOJO();
		SchoolDAO schoolDAO = new SchoolImpl();
		
		if(request.getParameter("SchoolSubmitBtn")!=null)
		{
		
			String schoolNameInEnglish = request.getParameter("school_name").trim();
			String schoolAddress = request.getParameter("school_address").trim();
			String slogan = request.getParameter("slogan").trim();
			String indexNo = request.getParameter("index_no").trim();
			String licenceNo = request.getParameter("licence_no").trim();
			String udise = request.getParameter("udise").trim();
			String schoolCode = request.getParameter("school_code").trim();
			String emailId = request.getParameter("email_id").trim();
			String phoneNo = request.getParameter("phone_no").trim();			
			String board = request.getParameter("board");
			String pUnitCode = request.getParameter("punit_code").trim();
			String center = request.getParameter("center").trim();
			String datetime = request.getParameter("date_time");
			String jubileeYear=request.getParameter("jubilee_year");
			String establishYear=request.getParameter("establish_year");
			String medium=request.getParameter("medium");
			
			System.out.println("schoolName:"+schoolNameInEnglish+"address:"+schoolAddress+"slogan:"+slogan+"indexNo:"+indexNo+"licenceNo:"+licenceNo+"udise:"+udise+"schoolCode:"+schoolCode+"emailid:"+emailId+"phoneNo:"+phoneNo+"board:"+board+"punit:"+pUnitCode+"center:"+center+"datetime:"+datetime+"jubileeyear:"+jubileeYear+"establishyear:"+establishYear+"medium:"+medium);
			
			schoolPojo.setName(schoolNameInEnglish);
			schoolPojo.setAddress(schoolAddress);
			schoolPojo.setSlogan(slogan);
			schoolPojo.setIndexno(indexNo);
			schoolPojo.setLicenceno(licenceNo);
			schoolPojo.setUdise(udise);
			schoolPojo.setShoolcode(schoolCode);
			schoolPojo.setEmailid(emailId);
			schoolPojo.setPhoneno(phoneNo);
			schoolPojo.setBoard(board);
			schoolPojo.setPunitcode(pUnitCode);
			schoolPojo.setCenter(center);
			schoolPojo.setDate(datetime);
			schoolPojo.setJubileeYear(jubileeYear);
			schoolPojo.setEstablishYear(establishYear);
			schoolPojo.setMedium(medium);
			
			schoolDAO.addSchool(schoolPojo);			
			response.sendRedirect("/SMGMT/View/Settings/school/addSchools.jsp");			
		}
				
	}

}
