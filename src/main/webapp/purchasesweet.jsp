<%@ page import="com.sweetshop.model.Sweet" %>
<%@ page import="com.sweetshop.service.SweetService" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
  SweetService service = SweetService.getInstance();
    Sweet sweet = service.getSweetById(id);
%>
<form action="purchaseSweet" method="post">
    <input type="hidden" name="id" value="<%= sweet.getId() %>" />
    <p>Buy how many of <%= sweet.getName() %> (available: <%= sweet.getQuantity() %>)?</p>
    <input type="number" name="qty" required min="1" />
    <button type="submit">Buy</button>
</form>
