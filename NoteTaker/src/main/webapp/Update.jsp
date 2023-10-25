<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Edit</title>
	<%@include file="required.jsp"  %>

</head>
<body style="background-image:url(image/note.jpg);background-repeat:no-repeat;background-size:cover;">
	<div class="container text-white">
		<%@include file="navbar.jsp" %>
		<%
			int id=Integer.parseInt(request.getParameter("note_id"));
			Session s=FactoryProvider.getFactory().openSession();
			Note note=(Note)s.get(Note.class,id); // doing for the go in persistent state
		%>	
			<h4 class="mt-3">Please Fill Your Note Details Where You Want To Update</h4>
			 
			 <form action="UpdateServlet" method="post">
			 	<input value="<%=note.getId() %>" type="hidden" name="note_id">
 				<div class="form-group">
   				<label for="title">Note Title</label>
   				<input  name="title" required type="text" class="form-control" aria-describedby="emailHelp" value="<%=note.getTitle() %>">
 				</div>
 				<div class="form-group">
   				<label for="content">Note Content</label>
					<textarea  name="content" required id="content" class="form-control" style="height:300px"><%=note.getContent()%> </textarea>
 				</div>
 				
 				<div class="container text-center">
 				<button type="submit" class="btn btn-primary">Update</button>
 				</div>
			</form>
			
		
		
	</div>
	

</body>
</html>