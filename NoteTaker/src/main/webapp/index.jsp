<!doctype html>
<html lang="en">
<head>
<title>Hello, world!</title>
<%@include file="required.jsp"%>
</head>
<body style="background-image: url(image/welcome.jpg); background-repeat: no-repeat; background-size: cover;">
	<div class="container">
		<%@include file="navbar.jsp"%>

		<div class="card mt-3 py-3">
			<img alt="" class="img-fluid mx-auto" style="max-width: 400px;"
				src="image/virtual.png">
			<h3 class="text-success text-center">Start Making Your Notes</h3>

		</div>
		<div class="container text-center py-2 mt-5">
			<a href="AddNote.jsp" class="btn btn-primary text-center">Start
				Here</a>
		</div>
	</div>
</body>
</html>