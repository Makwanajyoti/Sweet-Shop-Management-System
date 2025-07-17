<%@ page import="com.sweetshop.model.Sweet" %>
<%@ page import="com.sweetshop.service.SweetService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Restock Sweet</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f0fb;
            color: #333;
            padding: 40px;
            text-align: center;
        }

        h2 {
            color: #5e35b1;
        }

        form {
            background-color: #fff;
            padding: 36px;
            border-radius: 12px;
            display: inline-block;
            box-shadow: 0 0 10px rgba(94, 53, 177, 0.2);
        }

        input[type="number"] {
            padding: 8px 12px;
            font-size: 19px;
            border: 1px solid #ccc;
            border-radius: 6px;
            margin: 10px 0;
            width: 180px;
        }

        input[type="submit"] {
            background-color: #7e57c2;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 6px;
            font-size: 19px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 10px;
            font-weight: 600;
        }

        input[type="submit"]:hover {
            background-color: #673ab7;
        }

        p,span {
            font-size: 20px;
            font-weight: 600;
        }

        .error {
            color: red;
        }
    </style>
</head>
<body>
<%
    String idStr = request.getParameter("id");
    if (idStr == null) {
%>
    <h3 class="error">Sweet ID missing</h3>
<%
    } else {
        int id = Integer.parseInt(idStr);
        Sweet sweet = SweetService.getInstance().getSweetById(id);
        if (sweet == null) {
%>
    <h3 class="error">Sweet not found</h3>
<%
        } else {
%>
    <h2>Restock Sweet: <%= sweet.getName() %></h2>
    <form action="restockSweet" method="post">
        <input type="hidden" name="id" value="<%= sweet.getId() %>"/>
        <p>Current Quantity: <%= sweet.getQuantity() %></p>
        <span>  Add Quantity:</span> <input type="number" name="quantity" min="1" required/><br/>
        <input type="submit" value="Restock"/>
    </form>
<%
        }
    }
%>
</body>
</html>
