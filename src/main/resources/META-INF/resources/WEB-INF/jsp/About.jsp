<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>About NAD.AI</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Arial', sans-serif;
      background: linear-gradient(135deg, #f1c40f, #e67e22);
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

    /* About Page Container */
    .about-container {
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 50px 20px;
      text-align: center;
      color: #333;
      background-color: #f9f9f9;
    }

    .about-container h2 {
      font-size: 2.5rem;
      margin-bottom: 20px;
      color: #e67e22;
    }

    .about-container p {
      font-size: 1.2rem;
      max-width: 800px;
      margin: 20px 0;
      line-height: 1.6;
    }

    /* Profile Section */
    .profile-container {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      margin-top: 50px;
    }

    .profile {
      background-color: white;
      border-radius: 10px;
      padding: 20px;
      margin: 20px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease;
      width: 300px;
      text-align: center;
    }

    .profile:hover {
      transform: scale(1.05);
    }

    .profile img {
      width: 150px;
      height: 150px;
      border-radius: 50%;
      margin-bottom: 15px;
    }

    .profile h3 {
      font-size: 1.5rem;
      margin-bottom: 10px;
      color: #3498db;
    }

    .profile p {
      font-size: 1rem;
      color: #555;
    }

    /* Footer Section */
    .footer {
      background-color: #3498db;
      color: white;
      text-align: center;
      padding: 20px;
      margin-top: 50px;
    }

    .footer a {
      color: white;
      text-decoration: none;
      margin: 0 10px;
      font-size: 1rem;
      transition: color 0.3s ease;
    }

    .footer a:hover {
      color: #f1c40f;
    }
  </style>
</head>
<body>

  <!-- Navbar -->
  <nav class="navbar">
    <h1>NAD.AI</h1>
    <ul>
      <li><a href="index.html">Home</a></li>
      <li><a href="services.html">Services</a></li>
      <li><a href="about.html">About Us</a></li>
    </ul>
  </nav>

  <!-- About Us Container -->
  <div class="about-container">
    <h2>About Us</h2>
    <p>
      At NAD.AI, we are pioneers in artificial intelligence, machine learning, and cutting-edge technology. Our mission is to transform businesses with innovative AI-driven solutions that deliver unparalleled efficiency and insights.
    </p>

    <!-- Profile Section -->
    <div class="profile-container">
      <div class="profile">
        <img src="bobpic.png" alt="Siddharth (Bob)">
        <h3>SIDDHARTH (BOB)</h3>
        <p>Co-Founder and CTO of NAD.AI. A visionary in AI technology and passionate about driving innovation.</p>
      </div>
      <div class="profile">
        <img src="nadipic.png" alt="Nitish (Nadi)">
        <h3>NITISH (NADI)</h3>
        <p>Founder and CEO of NAD.AI. Focused on leading the company's strategic direction and fostering growth.</p>
      </div>
    </div>
  </div>

  <!-- Footer Section -->
  <div class="footer">
    <p>Connect with us:</p>
    <a href="mailto:inertia.icse@gmail.com">Email</a> |
    <a href="https://www.linkedin.com/in/siddharth-nayak-bob-9b1430197/">LinkedIn</a> |
    <a href="https://twitter.com/SiddharthTheBob">Twitter</a>
    <p>Copyright © NAD.AI 2023</p>
  </div>

</body>
</html>