<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sweet Shop Management</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to bottom right, #e0f7fa, #fff3f3);
            min-height: 100vh;
        }
        nav {
            background-color: #7e57c2;
            padding: 15px 30px;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }
        nav a {
            color: #fff;
            margin: 10px 20px;
            text-decoration: none;
            font-weight: bold;
            font-size: 22px;
            transition: color 0.3s ease, transform 0.3s ease;
            padding-bottom: 2px;
        }
        nav a:hover {
            color: #ffd740;
            transform: scale(1.1);
            border-bottom: 2px solid #ffd740;
        }
        .container {
            padding: 60px 20px;
            text-align: center;
        }
        h2 {
            color: #6a1b9a;
            font-size: 2.2rem;
            margin-bottom: 15px;
        }
        p {
            font-size: 18px;
            color: #424242;
        }
        .emoji {
            font-size: 2.5rem;
        }
    </style>
</head>
<body>
    <nav>
        <a href="addSweet.jsp">Add Sweet</a>
        <a href="viewSweets">View Sweets</a>
        <a href="search.jsp">Search Sweets</a>
        <a href="viewSweets">Purchase Sweet</a>
        <a href="viewSweets">Restock Sweet</a>
        <a href="sortSweets.jsp">Sort Sweets</a>
    </nav>

    <div class="container">
        <h2 class="emoji">Welcome to Sweet Shop Management System</h2>
        <p>Use the navigation above to manage your sweets with a delightful experience!</p>
    </div>
</body>
</html>
