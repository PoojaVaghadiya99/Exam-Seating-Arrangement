<%

if(session.getAttribute("name") == null) {
	response.sendRedirect("login.jsp");
}

%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Seating Arrangement</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 -->
<style>
.space{
	height:150px; 
}
.h{
line-height:80px;
}

</style>
</head>

<body id="page-top">

	<!-- Navigation-->
	 <nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Seating Arrangement System</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-danger text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Logout
			</button>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded bg-danger" href="Logout">Logout</a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<div class="space"></div>
	
	<div class="container">
	<div class="row">
	  <div class="col-sm-4 mt-3">
	    <div class="card">
	      <div class="card-body">
	        <h5 class="card-title">Faculty</h5>
	        <p class="card-text">Here, You can display, add, update or delete your faculty details.</p>
	        <a href="Display/faculty.jsp" class="btn btn-primary">View</a>
	      </div>
	    </div>
	  </div>
	  <div class="col-sm-4 mt-3">
	    <div class="card">
	      <div class="card-body">
	        <h5 class="card-title">Department</h5>
	        <p class="card-text">Here, You can display, add, update or delete your department details of the faculty.</p>
	        <a href="Display/department.jsp" class="btn btn-primary">View</a>
	      </div>
	    </div>
	  </div>
	  <div class="col-sm-4 mt-3">
	    <div class="card">
	      <div class="card-body">
	        <h5 class="card-title">Course</h5>
	        <p class="card-text">You can display, add, update or delete details about the course that available in your department.</p>
	        <a href="Display/course.jsp" class="btn btn-primary">View</a>
	      </div>
	    </div>
	  </div>
	  
	 
	  <div class="col-sm-4 mt-3">
	    <div class="card">
	      <div class="card-body">
	        <h5 class="card-title">Subject</h5>
	        <p class="card-text">Here, You can manage the examination details about the subject.</p>
	        <a href="Display/subject.jsp" class="btn btn-primary">View</a>
	      </div>
	    </div>
	  </div>
	  <div class="col-sm-4 mt-3">
	    <div class="card">
	      <div class="card-body">
	        <h5 class="card-title">Students</h5>
	        <p class="card-text">For the examination manage the details about students.</p>
	        <a href="Display/student.jsp" class="btn btn-primary">View</a>
	      </div>
	    </div>
	  </div>
	  <div class="col-sm-4 mt-3">
	    <div class="card">
	      <div class="card-body">
	        <h5 class="card-title">Block</h5>
	        <p class="card-text">Here, You can manage details about the examination block</p>
	        <a href="Display/block.jsp" class="btn btn-primary">View</a>
	      </div>
	    </div>
	  </div>
	  
	  <div class="col-sm-4 mt-3">
	    <div class="card">
	      <div class="card-body">
	        <h5 class="card-title">Exam</h5>
	        <p class="card-text">Enter details about exam and manage them.</p>
	        <a href="Display/exam.jsp" class="btn btn-primary">View</a>
	      </div>
	    </div>
	  </div>
	  <div class="col-sm-8 mt-3">
	    <div class="card">
	      <div class="card-body">
	        <h5 class="card-title">Seat Allotment</h5>
	        <p class="card-text">Here, enter the details about course and exam and generate student seat number and block number.</p>
	        <a href="Arrangement/seat_assign.jsp"" class="btn btn-primary">View</a>
	      </div>
	    </div>
	  </div>
	</div>
	

	</div> 
	
	
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
