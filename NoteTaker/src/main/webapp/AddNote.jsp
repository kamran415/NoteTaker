<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Add Notes</title>
		 <%@include file="required.jsp"  %>
	</head>
	<body style="background-image:url(image/note.jpg);background-repeat:no-repeat;background-size:cover;">
		<div class="container text-white">
			 <%@include file="navbar.jsp" %>
			 <h4 class="mt-4">Please Fill Your Note Details</h4>
			 
			 <form action="AddNoteServlet" method="post">
  				<div class="form-group">
    				<label for="title">Note Title</label>
    				<input  name="title" required type="text" class="form-control" aria-describedby="emailHelp" placeholder="write the title">
  				</div>
  				<div class="form-group">
    				<label for="content">Note Content</label>
					<textarea  name="content" required id="content" placeholder="write the content here..." class="form-control" style="height:300px"></textarea>
  				</div>
  				<div class="container text-center">
  				<button type="submit" class="btn btn-lg btn-primary">Add</button>
  				</div>
			</form>
		</div>
		
	</body>
</html>