<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Welcome to Bobata.ai</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }

        /* Navbar Styles */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #3498db;
            padding: 15px 20px;
            color: white;
        }

        .navbar h1 {
            margin: 0;
            font-size: 1.5rem;
        }

        .navbar ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .navbar li {
            margin-left: 20px;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            font-size: 1rem;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #f1c40f;
        }

        /* Welcome Page Styles */
        .welcome-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: calc(100vh - 60px); /* Adjusting for navbar height */
            background: linear-gradient(135deg, #a8edea 0%, #fed6e3 100%);
            text-align: center;
        }

        h1 {
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 10px;
        }

        p {
            font-size: 1.2rem;
            color: #666;
            margin-bottom: 30px;
        }

        a {
            text-decoration: none;
            color: white;
            background-color: #3498db;
            padding: 12px 20px;
            border-radius: 8px;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <h1>Bobata.ai</h1>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="login.html">Login</a></li>
            <li><a href="about.html">About</a></li>
        </ul>
    </nav>

    <div class="welcome-container">
        <h1>Welcome!</h1>
        <p>Thank you for visiting our website. We hope you have a great experience!</p>
        <a href="#">Get Started</a>
    </div>
</body>
</html>