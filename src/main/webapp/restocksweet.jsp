<%@ page import="com.sweetshop.model.Sweet" %>
<%@ page import="com.sweetshop.service.SweetService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Restock Sweet</title>
</head>
<body>
<%
    String idStr = request.getParameter("id");
    if (idStr == null) {
        out.println("<h3 style='color:red;'>Sweet ID missing</h3>");
    } else {
        int id = Integer.parseInt(idStr);
        Sweet sweet = SweetService.getInstance().getSweetById(id);
        if (sweet == null) {
            out.println("<h3 style='color:red;'>Sweet not found</h3>");
        } else {
%>
            <h2>Restock Sweet: <%= sweet.getName() %></h2>
            <form action="restockSweet" method="post">
                <input type="hidden" name="id" value="<%= sweet.getId() %>"/>
                <p>Current Quantity: <%= sweet.getQuantity() %></p>
                Add Quantity: <input type="number" name="quantity" min="1" required/><br/>
                <input type="submit" value="Restock"/>
            </form>
<%
        }
    }
%>
</body>
</html>
