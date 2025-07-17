<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sweet Shop Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #fff8f0;
            margin: 0;
        }
        nav {
            background-color: #ff9966;
            padding: 10px;
        }
        nav a {
            margin: 0 15px;
            color: white;
            font-weight: bold;
            text-decoration: none;
        }
        nav a:hover {
            text-decoration: underline;
        }
        .container {
            padding: 30px;
        }
        h2 {
            color: #cc6600;
        }
    </style>
</head>
<body>
    <nav>
        <a href="addSweet.jsp">Add Sweet</a>
        <a href="viewSweets">View Sweets</a>
        <a href="searchSweet.jsp">Search Sweets</a>
        <a href="purchaseSweet.jsp">Purchase Sweet</a>
        <a href="restockSweet.jsp">Restock Sweet</a>
    </nav>

    <div class="container">
        <h2>🍬 Welcome to Sweet Shop Management System</h2>
        <p>Use the navigation above to manage sweets in your shop.</p>
    </div>
</body>
</html>
