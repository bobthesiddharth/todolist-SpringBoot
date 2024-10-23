<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Add New Todo Page</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f1c40f, #e67e22);
            color: white;
            text-align: center;
        }

        /* Navbar Styles */
        .navbar {
            margin-bottom: 20px; /* Space below the navbar */
            background-color: rgba(0, 0, 0, 0.8);
        }

        /* Welcome Container Styles */
        .welcome-container {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.3);
            margin-top: 70px; /* Space for fixed navbar */
        }

        h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            color: #f1c40f;
        }

        /* Button Styles */
        .btn-success {
            display: inline-block;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        /* Form Field Styles */
        fieldset {
            border: none; /* Remove default fieldset border */
        }

        form:errors {
            margin-top: 5px;
            font-size: 0.9rem; /* Smaller font for error messages */
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


    <div class="container">
        <div class="welcome-container">
            <h2>Enter Todo Details</h2>
            <form:form method="post" modelAttribute="todo">
                <fieldset class="mb-3">
                    <form:label path="description">Description</form:label>
                    <form:input type="text" name="description" path="description" required="required" />
                    <form:errors path="description" cssClass="text-warning" />
                </fieldset>

                <fieldset class="mb-3">
                    <form:label path="targetDate">Target Date</form:label>
                    <form:input type="text" id="targetDate" name="targetDate" path="targetDate" required="required" />
                    <form:errors path="targetDate" cssClass="text-warning" />
                </fieldset>

                <form:input type="hidden" path="id" />
                <form:input type="hidden" path="done" />
                <input type="submit" class="btn-success" value="Add Todo" />
            </form:form>
        </div>
    </div>

    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript">
        $('#targetDate').datepicker({
            format: 'yyyy-mm-dd'
        });
    </script>
</body>
</html>