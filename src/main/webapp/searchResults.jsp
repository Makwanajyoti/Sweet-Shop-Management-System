<%@ page import="java.util.List" %>
<%@ page import="com.sweetshop.model.Sweet" %>

<%
    List<Sweet> results = (List<Sweet>) request.getAttribute("searchResults");
%>

<h2>Search Results</h2>

<% if (results == null || results.isEmpty()) { %>
    <p>No sweets found!</p>
<% } else { %>
    <table border="1">
        <tr>
            <th>ID</th><th>Name</th><th>Category</th><th>Price</th><th>Quantity</th>
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
