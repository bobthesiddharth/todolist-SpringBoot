<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Bootstrap CSS -->
	<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>List Todos Page</title>

	<!-- Custom Styles -->
	<style>
		/* General Styles */
		body {
			margin: 0;
			padding: 0;
			font-family: 'Arial', sans-serif;
			background: #FFF5CD;
			height: 100vh;
		}

		/* Main Container Style */
		.container {
			margin-top: 80px; /* Adds space below the navbar */
		}

		/* Welcome Container Styles */
		.welcome-container {
			background-color: rgba(0, 0, 0, 0.5);
			padding: 30px;
			border-radius: 10px;
			box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.3);
			color: #C4D7FF;
			max-width: 900px; /* Adjust width for content alignment */
			margin: 0 auto; /* Centers the container */
		}

		h1 {
			font-size: 2.5rem;
			margin-bottom: 20px;
			color: #f1c40f;
		}

		h2 {
			font-size: 2rem;
			margin-bottom: 15px;
		}

		hr {
			border-color: #fff;
		}

		/* Table Styles */
		table {
			width: 100%;
			margin-top: 20px;
			border-collapse: collapse;
			background-color: #E5D9F2;
			color: #333;
		}

		table th, table td {
			padding: 15px;
			text-align: center; /* Horizontal centering */
			vertical-align: middle; /* Vertical centering */
			border: 1px solid #ddd;
		}

		table th {
			background-color: #A594F9;
			color: black;
		}

		.table-striped tbody tr:nth-of-type(odd) {
			background-color: rgba(0, 0, 0, 0.05);
		}

		/* Button Styles */
		.btn-success, .btn-warning {
			display: inline-block;
			padding: 10px 20px;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s ease;
		}

		.btn-success {
			background-color: #28a745;
			color: white;
		}

		.btn-success:hover {
			background-color: #218838;
		}

		.btn-warning {
			background-color: #ffc107;
			color: white;
		}

		.btn-warning:hover {
			background-color: #e0a800;
		}
	</style>
</head>

<body>
	
	<!-- Include the navigation bar -->
	<nav class="navbar navbar-dark bg-dark navbar-expand-lg fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Bobata.ai</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="list-todos">Todos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

	<!-- Main Content -->
	<div class="container">
		<div class="welcome-container">
			<!-- Welcome Message -->
			<h1>Welcome, ${name}</h1>
			<hr>
			<h2>Your Todos are:</h2>
			<hr>

			<!-- Todos Table -->
			<table class="table table-striped table-hover table-bordered">
				<thead>
					<tr>
						<!-- <th>ID</th> -->
						<th>Description</th>
						<th>Target Date</th>
						<th>Is Done?</th>
						<th>Delete</th>
						<th>Update</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<tr>
							<!-- <td>${todo.id}</td>  -->
							<td>${todo.description}</td>
							<td>${todo.targetDate}</td>
							<td>${todo.done}</td>
							<td>
								<a href="delete-todo?id=${todo.id}" class="btn btn-warning">DELETE</a>
							</td>
							<td>
								<a href="update-todo?id=${todo.id}" class="btn btn-success">UPDATE</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<!-- Add Todo Button -->
			<a href="/add-todo" class="btn btn-success">Add Todo</a>
		</div>
	</div>

	<!-- Scripts -->
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>