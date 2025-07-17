<%@page import="java.util.List"%>
<%@page import="com.sweetshop.model.Sweet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <title>Sort Sweets</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f7f9fc;
            margin: 0;
            padding: 20px;
        }

        h2, h3 {
            text-align: center;
            color: #6a1b9a;
        }

        form {
            text-align: center;
            margin-bottom: 20px;
        }

        label, select, input[type="submit"] {
            font-size: 18px;
            padding: 10px;
            margin: 5px;
        }

        select {
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #7e57c2;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            padding: 9px 30px;
        }

        input[type="submit"]:hover {
            background-color: #6a1b9a;
        }

        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0px 0px 8px rgba(0,0,0,0.1);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #7e57c2;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        p {
            text-align: center;
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h2>Sort Sweets</h2>
    <form action="sortSweet" method="get">
        <label>Sort By:</label>
        <select name="sortBy">
            <option value="id">ID</option>
            <option value="name">Name</option>
            <option value="price">Price</option>
            <option value="quantity">Quantity</option>
        </select>
        <input type="submit" value="Sort">
    </form>

    <%
        List<Sweet> sortedSweets = (List<Sweet>) request.getAttribute("sortedSweets");
        if (sortedSweets != null && !sortedSweets.isEmpty()) {
    %>
        <h3>Sorted Sweets:</h3>
        <table>
            <tr>
                <th>ID</th><th>Name</th><th>Category</th><th>Price</th><th>Quantity</th>
            </tr>
            <%
                for (Sweet sweet : sortedSweets) {
            %>
            <tr>
                <td><%= sweet.getId() %></td>
                <td><%= sweet.getName() %></td>
                <td><%= sweet.getCategory() %></td>
                <td><%= sweet.getPrice() %></td>
                <td><%= sweet.getQuantity() %></td>
            </tr>
            <%
                }
            %>
        </table>
    <%
        } else if (sortedSweets != null) {
    %>
        <p>No sweets available.</p>
    <%
        }
    %>
</body>
</html>
