<h2>Search Sweets</h2>
<form action="searchSweet" method="post">
    <p>
        <label><input type="radio" name="searchType" value="name" checked onclick="toggleSearchFields()"> Search by Name</label>
        <label><input type="radio" name="searchType" value="category" onclick="toggleSearchFields()"> Search by Category</label>
        <label><input type="radio" name="searchType" value="range" onclick="toggleSearchFields()"> Search by Price Range</label>
    </p>

    <div id="nameField">
        <p>Name: <input type="text" name="name" /></p>
    </div>

    <div id="categoryField" style="display:none;">
        <p>Category: <input type="text" name="category" /></p>
    </div>

    <div id="rangeField" style="display:none;">
        <p>Min Price: <input type="number" name="minPrice" />
           Max Price: <input type="number" name="maxPrice" /></p>
    </div>

    <input type="submit" value="Search" />
</form>

<script>
function toggleSearchFields() {
    const searchType = document.querySelector('input[name="searchType"]:checked').value;
    document.getElementById('nameField').style.display = (searchType === 'name') ? 'block' : 'none';
    document.getElementById('categoryField').style.display = (searchType === 'category') ? 'block' : 'none';
    document.getElementById('rangeField').style.display = (searchType === 'range') ? 'block' : 'none';
}
</script>
