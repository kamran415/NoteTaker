<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>All Notes</title>
		
		<%@include file="required.jsp"  %>
		
	</head>
	<body style="background-image:url(image/note2.jpg);background-repeat:no-repeat;background-size:cover;">
		<div class="container">
			<%@include file="navbar.jsp" %>
			<h1 class="text-center text-white">All Notes	</h1>
			
			<div class="row">
				<div class="col-12">
				<%
				Session s=FactoryProvider.getFactory().openSession();
				Query q=s.createQuery("from Note");
				
				List<Note> list=q.list();
				for(Note note:list){
				%>	
					<div class="container p-2">
						<div class="card">
  							<img class="card-img-top mx-auto m-3" style="max-width:100px" src="image/virtual.png" alt="Card image cap">
  							<div class="card-body">
    							<h5 class="card-title"><%=note.getTitle() %></h5>
    							<p class="card-text"><i><%=note.getContent() %></i></p>
    							<h6><%=note.getAddedDate() %></h6>
    							<div class="container text-center">
    								<a href="DeletServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    								<a href="Update.jsp?note_id=<%=note.getId() %>" class="btn btn-success">Update</a>
 					 			</div>
 					 		</div>
						</div>
					</div>
				<% 
				}
				%>
				</div>
			</div>
			
			
			
			
			
			
		</div>
	</body>
</html>