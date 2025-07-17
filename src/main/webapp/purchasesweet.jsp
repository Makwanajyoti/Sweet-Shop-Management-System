<%@ page import="com.sweetshop.model.Sweet" %>
<%@ page import="com.sweetshop.service.SweetService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Purchase Sweet</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f3e5f5, #e3f2fd);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 80px auto;
            background-color: #ffffffdc;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            color: #7e57c2;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #333;
        }

        label {
            font-weight: 500;
            color: #5e2b8c;
        }

        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            margin-bottom: 20px;
            border: 1px solid #c7a9e2;
            border-radius: 6px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #7e57c2;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #732d91;
        }

        .error {
            color: red;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>
<%
    String idStr = request.getParameter("id");
    String q = request.getParameter("quantity");
    int id = -1;
    int quantity = -1;
    boolean valid = true;
    if (idStr != null) {
        try {
            id = Integer.parseInt(idStr);
        } catch (NumberFormatException e) {
            valid = false;
%>
<div class="error">Invalid Sweet ID!</div>
<%
        }
    }

    try {
        quantity = Integer.parseInt(q);
    } catch (Exception e) {
        quantity = -1;
    }

    if (quantity <= 0) {
%>
    <div class="error">Can't buy this item! Quantity is invalid.</div>
<%
    } else if (valid) {
        Sweet sweet = SweetService.getInstance().getSweetById(id);
        if (sweet == null) {
%>
    <div class="container">
        <h2>Sweet not found!</h2>
    </div>
<%
        } else {
%>
    <div class="container">
        <h2>Purchase Sweet: <%= sweet.getName() %></h2>
        <form action="purchaseSweet" method="post">
            <input type="hidden" name="id" value="<%= sweet.getId() %>"/>

            <p><strong>Name:</strong> <%= sweet.getName() %></p>
            <p><strong>Available Quantity:</strong> <%= sweet.getQuantity() %></p>

            <label for="quantity">Quantity to Purchase:</label>
            <input type="number" name="quantity" min="1" max="<%= sweet.getQuantity() %>" required />

            <input type="submit" value="Purchase"/>
        </form>
    </div>
<%
        }
    }
%>
</body>
</html>
