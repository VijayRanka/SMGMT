package com.servletStore.settings.classRoom.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servletStore.settings.classRoom.model.AddClassDAO;
import com.servletStore.settings.classRoom.model.AddClassImpl;
import com.servletStore.settings.classRoom.model.AddClassPOJO;


public class AddClass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		AddClassDAO addclassdao=new AddClassImpl();
		
		//get data
		int count=Integer.parseInt(request.getParameter("rowCount"));
		String[] addclass=new String[count];
		
		//set value in array
		for (int i = 0; i < count; i++) {
			addclass[i]=request.getParameter("classRoom"+(i+1));
		} 
		
		//set value in pojo
		AddClassPOJO pojo=new AddClassPOJO();
		pojo.setAddclass(addclass);
		
		//insert value
		try {
			addclassdao.insertClassDetails(pojo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("View/Settings/Class/AddClass.jsp");	
		
	}

}
