package com.servletStore.campus.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servletStore.campus.model.CampusDAO;
import com.servletStore.campus.model.CampusImpl;
import com.servletStore.campus.model.CampusPojo;

public class Campus extends HttpServlet {
	
	CampusDAO campus;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=null;
		String submit=request.getParameter("submit");
		if(submit!=null)
		{
			String name=request.getParameter("campusname");
			String address=request.getParameter("campusaddress");
			String mobileno=request.getParameter("mobileno");
			
			campus=new CampusImpl();
			CampusPojo camp=new CampusPojo(name,address,mobileno);
			try {
				campus.insertRecord(camp);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			RequestDispatcher rd=request.getRequestDispatcher("View/trestee/Campus.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("id")!=null)
		{
			campus=new CampusImpl();
			String campusid=request.getParameter("id");
			System.out.println(campusid);
			try {
				
				campus.deleteRecord(campusid);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher rd=request.getRequestDispatcher("View/trestee/Campus.jsp");
			rd.forward(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
