<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Sweet</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to bottom right, #f3e5f5, #e3f2fd);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 500px;
        }

        .form-container h2 {
            margin-bottom: 20px;
            text-align: center;
            color: #6a1b9a;
        }

        label {
            display: block;
            margin: 12px 0 5px;
            font-weight: 600;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 20px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #7e57c2;
            outline: none;
        }

        input[type="submit"] {
            margin-top: 20px;
            width: 100%;
            padding: 12px;
            background-color: #7e57c2;
            color: #fff;
            border: none;
            border-radius: 8px;
            font-size: 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #6a1b9a;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add New Sweet</h2>
        <form action="addSweet" method="post">
            <label for="id">ID:</label>
            <input type="text" name="id" id="id" required />

            <label for="name">Name:</label>
            <input type="text" name="name" id="name" required />

            <label for="category">Category:</label>
            <input type="text" name="category" id="category" required />

            <label for="price">Price:</label>
            <input type="text" name="price" id="price" required />

            <label for="quantity">Quantity:</label>
            <input type="text" name="quantity" id="quantity" required />

            <input type="submit" value="Add Sweet" />
        </form>
    </div>
</body>
</html>
