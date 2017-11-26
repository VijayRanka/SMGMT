package com.servletStore.settings.section.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;

import com.servletStore.settings.section.model.SectionDAO;
import com.servletStore.settings.section.model.SectionImpl;
import com.servletStore.settings.section.model.SectionPojo;


@WebServlet("/Section")
public class Section extends HttpServlet 
{
	SectionDAO sectiondao;
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		sectiondao=new SectionImpl();
		String section_name=request.getParameter("section_name");
		SectionPojo section=new SectionPojo(section_name);
		try {
			sectiondao.insertSchoolSectionDetails(section);
			System.out.println("inserted successfully");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("View/Settings/sections/SectionNew.jsp");
	}

}
