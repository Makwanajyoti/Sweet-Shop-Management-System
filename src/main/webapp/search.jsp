<!DOCTYPE html>
<html>
<head>
    <title>Search Sweets</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e9dff2, #f0e6fa);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 12px rgba(155, 89, 182, 0.2);
        }

        h2 {
            text-align: center;
            color: #7e55b1;
            margin-bottom: 25px;
        }

        label {
            margin-right: 15px;
            font-weight: 600;
            color: #7e57c2;
            font-size: 20px;
        }

        input[type="text"],
        input[type="number"] {
            padding: 8px;
            width: 90%;
            border: 1px solid #ccc;
            border-radius: 6px;
            margin-top: 5px;
            font-size: 20px;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        .form-group {
            margin: 15px 0;
        }

        input[type="submit"] {
            background-color: #7e57c2;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 20px;
            font-weight: 600;
            transition: background-color 0.3s;
            display: block;
            margin: 20px auto 0;
        }

        input[type="submit"]:hover {
            background-color: #732d91;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Search Sweets</h2>
    <form action="searchSweet" method="post">
        <div class="form-group">
            <label><input type="radio" name="searchType" value="name" checked onclick="toggleSearchFields()"> Search by Name</label>
            <label><input type="radio" name="searchType" value="category" onclick="toggleSearchFields()"> Search by Category</label>
            <label><input type="radio" name="searchType" value="range" onclick="toggleSearchFields()"> Search by Price Range</label>
        </div>

        <div id="nameField" class="form-group">
            <label>Name:</label><br>
            <input type="text" name="name" />
        </div>

        <div id="categoryField" class="form-group" style="display:none;">
            <label>Category:</label><br>
            <input type="text" name="category" />
        </div>

        <div id="rangeField" class="form-group" style="display:none;">
            <label>Min Price:</label><br>
            <input type="number" name="minPrice" />
            <br><br>
            <label>Max Price:</label><br>
            <input type="number" name="maxPrice" />
        </div>

        <input type="submit" value="Search" />
    </form>
</div>

<script>
function toggleSearchFields() {
    const searchType = document.querySelector('input[name="searchType"]:checked').value;
    document.getElementById('nameField').style.display = (searchType === 'name') ? 'block' : 'none';
    document.getElementById('categoryField').style.display = (searchType === 'category') ? 'block' : 'none';
    document.getElementById('rangeField').style.display = (searchType === 'range') ? 'block' : 'none';
}
</script>
</body>
</html>
