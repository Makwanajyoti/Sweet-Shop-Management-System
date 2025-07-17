<%@page import="java.util.List"%>
<%@page import="com.sweetshop.model.Sweet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <title>Sort Sweets</title>
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
        <table border="1">
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
            out.println("<p>No sweets available.</p>");
        }
    %>
</body>
</html>
