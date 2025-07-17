<%@ page import="com.sweetshop.model.Sweet" %>
<%@ page import="com.sweetshop.service.SweetService" %>

<%
    String idStr = request.getParameter("id");
    String q = request.getParameter("quantity");
    int id = -1;
    int quantity=-1;
    if (idStr != null) {
        try {
            id = Integer.parseInt(idStr);

        } catch (NumberFormatException e) {
            out.println("Invalid Sweet ID!");
        }
    }
    try{
            quantity= Integer.parseInt(q);
    
    }
    catch( Exception e){
    
    }
        if(quantity<=0){
out.println("can't by this item!");
    }
    else {
    Sweet sweet = SweetService.getInstance().getSweetById(id);
%>

<% if (sweet == null) { %>
    <h2>Sweet not found!</h2>
<% } else { %>
    <h2>Purchase Sweet: <%= sweet.getName() %></h2>
    <form action="purchaseSweet" method="post">
        <input type="hidden" name="id" value="<%= sweet.getId() %>"/>
            <p>Name: <%= sweet.getName() %></p>
    <p>Available Quantity: <%= sweet.getQuantity() %></p>
        Quantity: <input type="number" name="quantity" min="1" max="<%= sweet.getQuantity() %>" required /><br/>
       
        <input type="submit" value="Purchase"/>
    </form>
<% } }%>

