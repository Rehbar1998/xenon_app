<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<link rel="stylesheet" 
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" 
integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />


<title>PRODUCT DETAILS</title>
<style>
h1 {
    color: black;
    font-size: 38px;
    text-align: center;
    margin-top: 40px;
    font-family: Garamond;
    font-weight: bold;
}
#outline-box {
           position: fixed;
            top: 0;
            left: 0;
            width: 200px;
            height: 120px;
            background-image: url("logo.png");
            background-size: cover;
            background-position: center;
        }
footer {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: #f2f2f2;
            text-align: center;
            padding: 10px;
        }

        footer p {
            margin: 0;
            font-size: 18px;
            color: dimgrey;
        }
body {

/*
background-color: #FAEACB; */
background-color: white;
            margin: 0;
            padding: 0;
            font-family: "Times New Roman", Times, serif;
            overflow: hidden; 
          /*  background-color: #E6E6FA; */
            font-weight: bold; 
        }
form {
    max-width: 100%; 
    margin: 30px auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form label {
    display: block;
    margin-bottom: 10px;
    color: #666;
    font-weight: bold; /* Add font weight for labels */
}

form input[type="text"],
form input[type="number"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    outline: none;
}

form input[type="submit"] {
    display: block;
    width: 100%; 
    padding: 10px;
    background-color: #337ab7;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    text-align: center;
    font-weight: bold; 
}

form input[type="submit"]:hover {
    background-color: #23527c;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th {
/*
background-color: #FAEACB;
   background-color: #505050; */
   
   background-color: red;


    color: white;
    padding: 8px;
    font-weight: bold; 
}

td {
    background-color: #fff;
    text-align: center;
    padding: 8px;
}

.back-button {
    position: fixed;
    top: 20px;
    right: 20px;
    background-color: transparent;
    color: black;
    border: none;
    font-size: 20px;
    font-weight: bold;
    cursor: pointer;
    outline: none;
    transition: transform 0.3s, font-size 0.3s;
}

.back-button:hover {
    color: #3BB9FF;
    transform: scale(1.2);
}
</style>


</head>
<body>

 <button class="back-button" onclick="goBack()"><i class="fas fa-chevron-left"></i> Back</button>

<h1><b>PRODUCT DETAILS</b></h1>



<script>
        function goBack() {
            window.location.href = "home";
        }
    </script>

<script>
    function showAlert() {
      alert("Product Deleted Succesfully!");
    }
  </script>

<table border="5" >
<tr>
<th>Product ID</th>
<th>Product Type</th>
<th>Product Name</th>
<th>Manufacturer</th>

<th>Manufacturing Year</th>

<th>Action</th>


</tr>
<c:forEach items="${list}" var="item">
<tr>
<td>${item.product_id }</td>
<td>${item.product_type }</td>
<td>${item.product_name }</td>

<td>${item.manufacturer }</td>

<td>${item.manufacturing_year}</td>




<td>

<a href='pro/${item.product_id}'><i class="fa fa-edit" style="font-size:22px;color:blue"></i></a>
 <a onclick="showAlert()" href='delitem/${item.product_id} '> <i  class="fas fa-trash" style="font-size:22px;color:red"></i></a>




</td>
</tr>
</c:forEach>

</table>
</body>
</html>

