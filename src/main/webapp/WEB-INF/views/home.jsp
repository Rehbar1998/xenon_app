<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRODUCT MODULE</title>
<style>
body {
height: 100%;
font-family: Arial, sans-serif;
background-image: url('pkr.jpg'); 
background-repeat: no-repeat;
background-size: cover;


}
h1 {
color: #333;
text-align: center;
margin-top: 50px;
}
h2 {
color: #666;
margin-top: 40px;
}
ul {
list-style-type: none;
padding-left: 0;
text-align: center;
margin-top: 20px;
}
li {
margin-bottom: 10px;
}
li a {
display: inline-block;
padding: 10px 20px;
background-color: #337ab7;
color: #fff;
text-decoration: none;
border-radius: 5px;
transition: background-color 0.3s ease;
}
li a:hover {
background-color: #23527c;
}

        
.logout-link {
    position: fixed;
    top: 20px;
    right: 55px;
    display: flex;
    align-items: center;
    text-decoration: none;
    color: blue;
    transition: color 0.3s;
    font-size: 25px;
}

.logout-link:hover {
    color: red;
}

.logout-link i {
    margin-right: 5px;
}
</style>

</head>
 

<body>


<h1> Welcome to Product Management System</h1>
 <a href="#" class="logout-link" onclick="logout()">
           <i class="fas fa-sign-out-alt"></i>
           Logout
       </a>


<center> 
<h1 style="color:pink;"></h1></center>
<ul>
<li><a href="./form">ADD PRODUCT</a></li>
<li><a href="./pro">PRODUCT DETAILS</a></li>


</ul>
<script>
function logout() {
    alert("Successfully logged out.");

    window.location.href = "/";
}
</script>


</body>
</html>