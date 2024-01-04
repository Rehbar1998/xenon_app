<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <title>VEHICLE GURU</title>
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

    
    
    
    
    
    
      
       
        .search-box {
    position: absolute;
    top: 5%;
    left: 50%;
    transform: translate(-50%, -50%);
    display: flex;
    align-items: center;
    justify-content: center;
}

.search-box input[type="text"] {
    padding: 20px;
    border: none;
    border-radius: 30px;
    width: 500px;
    background-color: #f2f2f2;
    font-size: 18px;
    font-weight: bold;
    color: black;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: box-shadow 0.3s ease;
}

.search-box input[type="text"]:focus {
    outline: none;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
}

.search-box button[type="submit"] {
    background: none;
    border: none;
    padding: 10px;
    cursor: pointer;
}

.search-box button[type="submit"] i {
    font-size: 20px;
    color: #333;
    transition: color 0.3s ease;
}

.search-box button[type="submit"]:hover i {
    color: #ff5500;
}
       

     

       
        nav {
            position: fixed;
            top: 130px;
            width: 100%;
            left: 0px;
            background-color: #505050;
            padding: 10px;
            display: flex;
            align-items: left;
        }

        nav a {
            margin: 0 10px;
            text-decoration: none;
            color: snow;
            font-size: 20px;
            font-weight: bold;
            transition: color 0.3s;
        }

        nav a:hover {
            color: #3BB9FF;
            transform: scale(1.1);
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

       

       

       
#login-register {
            position: fixed;
            top: 20px;
            right:55px;
            display: flex;
            align-items: center;
        }

        #login-register a {
            text-decoration: none;
            color: dimgrey;
            font-weight: bold;
            font-size: 25px;
            display: flex;
            align-items: center;
            margin-left: 10px;
        }

        #login-register a:hover {
            color:blue;
        }

        #login-register a .fa {
            margin-right: 5px;
        }


     

      

     
        

     .blur-effect {
            filter: blur(5px);
        }
  .container {
  width:100%;
  padding: 10px;
  position: absolute;
  top: 620px;
}
.container .title {
  color: black;
  font-family: Arial, sans-serif;
  font-size: 20px;
  font-weight: bold;
}


.login-container {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    backdrop-filter: blur(10px); 
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 9999;
    visibility: hidden;
    opacity: 0;
    transition: visibility 0s, opacity 0.5s;
}

.login-form {
    width: 400px;
    padding: 20px;
    background-color: #f2f2f2;
    border-radius: 10px;
    text-align: left;
    font-size: 25px;
    font-weight: bold; 
}


        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 80%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            font-size: 20px;
    font-weight: bold; 
        }
        .login-form button {
    width: 40%;
    padding: 10px;
    background-color: brown;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
    font-size: 20px; 
    font-weight: bold; 
}

.login-form button.login-button {
    margin-right: 80px; 
    justify-content: space-between;
}

.login-form .links-group {
    display: flex; 
    justify-content: 
    margin-top: 10px; 
}

.login-form .links-group button {
    width: auto; 
    padding: 10px; 
}

         .login-form a {
            margin-top: 10px;
            color: brown;
            text-decoration: none;
           font-size: 20px;
    font-weight: bold; 
        }

        .login-form a:hover {
            color: orangered;
        }
        .login-form .links-group {
    margin-top: 10px;
    display: flex;
    justify-content: space-between;
   font-size: 20px;
    font-weight: bold; 
}

.login-form .links-group a {
    text-decoration: none;
    color: brown;
    font-size: 25px;
    font-weight: bold; 
}

.login-form .links-group a:hover {
    color: orangered;
}
        .blur-effect body {
            overflow: hidden;
        }
    </style>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
</head>
<body>
    <div id="outline-box"></div>
     <div class="search-box">
        <input type="text" placeholder="Search...">
        <button type="submit"><i class="fas fa-search"></i></button>
    </div>
  
    <div id="login-register">
        <a href="#">
            <i class="fas fa-user"></i>
            LOGIN/REGISTER
        </a>
    </div>
    <nav>
     
       
        <a href="/aboutus">ABOUT US</a>
    </nav>

  

    
        


    <form action="/login" method="POST">
    <div id="loginContainer" class="login-container">
    <div class="login-form">
        <h2 style="color: brown;">Login</h2>
        <label for="username" style="color: black;">Username:</label>
<input type="text" id="username" name="username" placeholder="Enter your username">

<label for="password" style="color: black;">Password:</label>
<input type="password" id="password" name="password" placeholder="Enter your password">

        <div class="button-group">
    <button type="submit">LOGIN</button>
    <button type="button">CANCEL</button>
</div>


        <div class="links-group">
         
             <a href="/signup">Create an account</a>
        </div>
    </div>
</div>
</form>

    <footer>
        <p>
            <a href="/terms">Terms of Service</a> |
            <a href="/privacy">Privacy Policy</a>
        </p>
    </footer>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
        const loginRegisterLink = document.querySelector("#login-register a");
        const loginContainer = document.querySelector("#loginContainer");

        loginRegisterLink.addEventListener("click", function(event) {
            event.preventDefault();
            loginContainer.style.visibility = "visible";
            loginContainer.style.opacity = 1;
        });

        function closeLoginForm() {
            loginContainer.style.visibility = "hidden";
            loginContainer.style.opacity = 0;
        }

        const cancelButton = document.querySelector(".login-form button[type='button']");
        cancelButton.addEventListener("click", closeLoginForm);

        loginContainer.addEventListener("click", function(event) {
            if (event.target === loginContainer) {
                closeLoginForm();
            }
        });


     
</script>
</body>
</html>