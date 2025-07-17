<%@page import="com.sweetshop.model.Sweet"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>

<%
    List<Sweet> sweets = (List<Sweet>) request.getAttribute("sweets");
%>
<html>
<head>
    <title>View Sweets</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to bottom right, #f3e5f5, #e3f2fd);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1000px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            color: #6a1b9a;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            font-size: 20px;
        }

        th {
            background-color: #7e57c2;
            color: #fff;
        }

        tr:hover {
            background-color: #f3e5f5;
        }

        .no-data {
            text-align: center;
            color: #777;
            margin-top: 20px;
        }

        .btn {
            display: inline-block;
            margin: 10px 5px;
            padding: 10px 18px;
            background-color: #7e57c2;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            font-weight: 600;
        }

        .btn:hover {
            background-color: #6a1b9a;
        }

        .action-btn {
            padding: 6px 12px;
            font-size: 17px;
            margin: 2px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Sweet Inventory</h2>

        <% if (sweets != null && !sweets.isEmpty()) { %>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Sweet sweet : sweets) { %>
                        <tr>
                            <td><%= sweet.getId() %></td>
                            <td><%= sweet.getName() %></td>
                            <td><%= sweet.getCategory() %></td>
                            <td>₹<%= sweet.getPrice() %></td>
                            <td><%= sweet.getQuantity() %></td>
                            <td>
                                <a class="btn action-btn" href="deleteSweet?id=<%= sweet.getId() %>">Delete</a>
                                <a class="btn action-btn" href="restocksweet.jsp?id=<%= sweet.getId() %>">Restock</a>
                                <a class="btn action-btn" href="purchasesweet.jsp?id=<%= sweet.getId() %>&quantity=<%=sweet.getQuantity()%>">Purchase</a>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <% } else { %>
            <div class="no-data">No sweets available.</div>
        <% } %>
    </div>
</body>
</html>
