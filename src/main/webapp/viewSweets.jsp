<%@page import="com.sweetshop.model.Sweet"%>
<%@ page import="java.util.*, com.sweetshop.sweetshopmanagement.*" %>
<h2>All Sweets</h2>
<table border="1">
    <tr><th>ID</th><th>Name</th><th>Category</th><th>Price</th><th>Quantity</th></tr>
    <%
        List<Sweet> sweets = (List<Sweet>) request.getAttribute("sweets");
        if (sweets != null) {
            for (Sweet s : sweets) {
    %>
        <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getCategory() %></td>
            <td><%= s.getPrice() %></td>
            <td><%= s.getQuantity() %></td>
        </tr>
    <%
            }
        }
    %>
</table>
