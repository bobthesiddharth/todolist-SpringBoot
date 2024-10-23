<!DOCTYPE html>
<html lang="en">
<head>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Welcome to Bobata.ai</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding-top: 70px; /* Adjusted for fixed navbar */
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f1c40f, #e67e22);
            min-height: 100vh; /* Ensure full viewport height */
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            flex-direction: column; /* Stack items vertically */
            color: white;
            text-align: center;
        }

        /* Container Styles */
        .welcome-container {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.3);
            margin-bottom: 20px; /* Add margin between containers */
            width: 80%; /* Adjust width to center nicely */
            max-width: 500px; /* Optional max width */
        }

        h1 {
            font-size: 3rem;
            margin-bottom: 20px;
            color: #f1c40f;
        }

        p {
            font-size: 1.2rem;
            margin-bottom: 40px;
            color: #ecf0f1;
        }

        /* Modified Navbar Styles */
        nav.navbar {
            background-color: rgba(0, 0, 0, 0.8); /* Slightly opaque black for visibility */
        }

        nav .navbar-brand, 
        nav .nav-link {
            color: #f1c40f; /* Gold color for links and brand */
        }

        nav .nav-link:hover {
            color: #ecf0f1; /* Lighter color on hover */
        }

        nav .navbar-toggler-icon {
            color: white; /* Make sure the toggler icon is visible */
        }
    </style>
</head>
<body>

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

    <!-- Welcome Container -->
    <div class="welcome-container">
        <h1>Welcome ${name}</h1>
        <hr>
        <p>Your AI-powered ToDo Management platform. Explore and innovate with us!</p>
        <a href="list-todos">Get Started</a>
    </div>

    <!-- Additional Container -->
    <div class="welcome-container">
        <div>
            <div>Your Name: ${name}</div>
            <a href="list-todos">Manage Todos</a>
        </div>
    </div>

    <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>