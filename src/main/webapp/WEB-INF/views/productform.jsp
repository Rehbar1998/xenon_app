<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="forms" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<link rel="stylesheet" 
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" 
integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />


<title>Add Appliance Details</title>
<style>
*{
	margin: 0;
	padding: 0;
}
body{
	background-color: #FAEACB;
	background-size: 100%;
	margin-right: 820px;
}
div.main{
	width: 505px;
	margin: 100px auto 0px auto;
}
h2{
text-align: center;
padding: 20px;
font-family: sans-serif;
}

h1 {
font-family: Garamond;
font-size:300%;
color:  #333;
text-align: center;
margin-top: 50px;
}

div.register{
background-color:rgba(0,0,0,0.5);
width: 150%;
font-size: 18px;
align:center;
border-radius: 10px;
border:1px, solid rgba(255, 255, 255, 0.3);
box-shadow:2px 2px 15px
rgba(0,0,0,0.3);
color:#fff;
font-weight: bold;
}
form#register{
	margin: 40px;
}
.s{
width: 200px;
padding: 7px;
font-size: 16px;
font-family: sans-serif;
font-weight: 600;
border-radius: 3px;


background-color: rgba(250,100,0,0.8);
color: #fff;
cursor: pointer;
border: 1px solid;
border: 1px solid rgba(255,255,255,0.3);
box-shadow:1px 1px 5px rgba(0,0,0,0.3);
margin-bottom: 20;
}
td {
  padding: 10px; /* Adjust the value to increase or decrease the spacing */
}

.back-button {
            position: fixed;
            top: 20px;
            left: 20px;
            background-color: transparent;
            color: black;
            border: none;
            font-size: 20px;
            cursor: pointer;
            outline: none;
        }

.back-arrow {
  /* background-color: rgba(250,100,0,0.8); */
  color: white;
  border: none;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 4px;
  transition: background-color 0.3s ease;
  margin-top:30px;
  margin-left: 30px;
  font-weight: bold;
  text-decoration: none;
}


}



</style>
</head>
<body>


 <button class="back-button" onclick="goBack()"><i class="fas fa-chevron-left"></i> Back</button>


<script>
        function goBack() {
            window.location.href = "home";
        }
    </script>

<script>
    function showAlert() {
      alert("Product Added Succesfully!");
    }
  </script>

<div class="main">
<div class="register">
<h2><b>Add Product</b></h2>
<forms:form id="register" action="processform2"  method="post">
	<table>
	   <tr>
						<td><forms:label path="product_id">Product Id:</forms:label><br>
						<forms:input path="product_id"/><br></td>
						
						<td><forms:label path="product_type">Product Type:</forms:label><br>
						<forms:input path="product_type"/><br></td>
						
						<td><forms:label path="product_name">Product Name:</forms:label><br>
						<forms:input path="product_name"/><br></td></tr>
						
						
						
					<tr>	<td><forms:label path="manufacturer">Product Manufacturer:</forms:label><br>
						<forms:input path="manufacturer"/><br></td>
						
			
						
						<td><forms:label path="manufacturing_year">Manufacturing Year:</forms:label><br>
						<forms:input path="manufacturing_year"/><br></tr>
						
		
						
						
			
						
  					
						
						
			 			<tr><td><input  onclick="showAlert()" type="submit" value="Submit Details" class="s" >
			 			</td></tr>
			 			
			 </table>
</forms:form>
</div>
</div>
</body>
</html>