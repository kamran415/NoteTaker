package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Transaction;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class DeletServlet
 */
public class DeletServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			Note note=(Note)s.get(Note.class,id);
			
			s.delete(note);
			tx.commit();
			
			
			s.close();
			response.sendRedirect("allNotes.jsp");
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
