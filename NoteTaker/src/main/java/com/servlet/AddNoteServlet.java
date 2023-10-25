package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;	

/**
 * Servlet implementation class AddNoteServlet
 */
public class AddNoteServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//title and content fetch here 
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
		Note note=new Note(title, content, new Date());
		
		System.out.println(note.getContent());
		
		//hibernate saves date in db from here  
		Session s=FactoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		
		
		
		s.save(note);
		tx.commit();
		s.close();
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<h1 style='text-align:center'>Note is added successfully</h1>");
		out.println("<h1 style='text-align:center'><a href='allNotes.jsp'>View All Notes</a></h1>");
	}

}
