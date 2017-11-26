package com.servletStore.caste.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servletStore.caste.model.CasteDAO;
import com.servletStore.caste.model.CasteImpl;
import com.servletStore.caste.model.CastePOJO;

public class Caste extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		CastePOJO castePojo=new CastePOJO();
		CasteDAO casteDAO=new CasteImpl();
		
		if(request.getParameter("category_btn")!=null){
			
			String casteCategoryName=request.getParameter("casteCategoryName").toUpperCase().trim();
			
			castePojo.setCasteCategoryName(casteCategoryName);
			casteDAO.addCasteCategory(castePojo);

			RequestDispatcher rd = request.getRequestDispatcher("View/Settings/caste/casteMgmt.jsp");
	        rd.forward(request, response);
		}
		
		if(request.getParameter("category_id")!=null){
			
			String category_id=request.getParameter("category_id");
			System.out.println("category_id : "+ category_id);
			
			
		}
	}
}