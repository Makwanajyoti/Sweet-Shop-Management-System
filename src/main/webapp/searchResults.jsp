<%@ page import="java.util.List" %>
<%@ page import="com.sweetshop.model.Sweet" %>

<%
    List<Sweet> results = (List<Sweet>) request.getAttribute("searchResults");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e9dff2, #f0e6fa);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 12px rgba(155, 89, 182, 0.2);
        }

        h2 {
            text-align: center;
            color: #7e57c2;
            margin-bottom: 25px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #7e57c2;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f2fc;
        }

        tr:hover {
            background-color: #f1e3f8;
        }

        p {
            text-align: center;
            font-size: 18px;
            color: #7e57c2;
        }
         a button{
            font-size: 20px;
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
    </style>
</head>
<body>
    <a href="index.jsp" ><button class="btn">back</button></a>
<div class="container">
    <h2>Search Results</h2>

    <% if (results == null || results.isEmpty()) { %>
        <p>No sweets found!</p>
    <% } else { %>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Category</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
            <% for (Sweet s : results) { %>
                <tr>
                    <td><%= s.getId() %></td>
                    <td><%= s.getName() %></td>
                    <td><%= s.getCategory() %></td>
                    <td><%= s.getPrice() %></td>
                    <td><%= s.getQuantity() %></td>
                </tr>
            <% } %>
        </table>
    <% } %>
</div>
</body>
</html>
