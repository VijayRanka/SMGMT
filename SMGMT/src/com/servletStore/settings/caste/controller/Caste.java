package com.servletStore.settings.caste.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servletStore.settings.caste.model.CasteDAO;
import com.servletStore.settings.caste.model.CasteImpl;
import com.servletStore.settings.caste.model.CastePOJO;

public class Caste extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		CastePOJO castePojo=new CastePOJO();
		CasteDAO casteDAO=new CasteImpl();

		//add-CasteCategory
		if(request.getParameter("category_btn")!=null){
			
			String casteCategoryName=request.getParameter("casteCategoryName").toUpperCase().trim();
			
			castePojo.setCasteCategoryName(casteCategoryName);
			casteDAO.addCasteCategory(castePojo);

			RequestDispatcher rd = request.getRequestDispatcher("View/Settings/caste/casteMgmt.jsp");
	        rd.forward(request, response);
		}
		
		//delete-CasteCategory
		if(request.getParameter("category_id")!=null){
			
			int category_id=Integer.parseInt(request.getParameter("category_id"));
	
			casteDAO.deleteCategory(category_id);
	
			RequestDispatcher rd = request.getRequestDispatcher("View/Settings/caste/casteMgmt.jsp");
	        rd.forward(request, response);
		}
		
		//update-CasteCategory		
		
		
		//add-Religion
		if(request.getParameter("religion_btn")!=null){
			
			String religionName=request.getParameter("religionName").toUpperCase().trim();
			
			castePojo.setReligionName(religionName);
			casteDAO.addReligion(castePojo);

			RequestDispatcher rd = request.getRequestDispatcher("View/Settings/caste/casteMgmt.jsp");
	        rd.forward(request, response);
		}
		
		//add-Religion
		if(request.getParameter("religion_id")!=null){
			
			int religion_id=Integer.parseInt(request.getParameter("religion_id"));
	
			casteDAO.deleteReligion(religion_id);
	
			RequestDispatcher rd = request.getRequestDispatcher("View/Settings/caste/casteMgmt.jsp");
	        rd.forward(request, response);
		}
	}
}