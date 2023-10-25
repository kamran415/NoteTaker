package com.servlet;

import java.io.IOException;
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
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		int id=Integer.parseInt(request.getParameter("note_id"));
		
		
		
		
		
		//hibernate saves date in db from here  
		Session s=FactoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		Note note=(Note)s.get(Note.class,id);
		
		note.setTitle(title);
		note.setContent(content);
		note.setAddedDate(new Date());
		
		
		
		s.save(note);
		tx.commit();
		s.close();
		response.sendRedirect("allNotes.jsp");
		
		
		
	}

}
