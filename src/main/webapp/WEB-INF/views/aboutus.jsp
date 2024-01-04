<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>XenonStack About Us</title>
    <style>
         body {
            margin: 0;
            padding: 0;
            font-family: "Times New Roman", Times, serif;
            overflow: hidden; 
            background-color: #E6E6FA;
            font-weight: bold; 
        }
         #outline-box {
             position: fixed;
             top: 0;
             left: 0;
             width: 250px;
             height: 120px;
             background-image: url("/logo.png");
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
            font-size: 14px;
            color: dimgrey;
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

        .page-heading {
            font-size: 48px;
            font-weight: bold;
            color: orange;
            text-align: center;
            text-shadow: 2px 2px 4px black;
            margin-top: 80px;
        }

        .about-content {
            text-align: center;
            margin: 40px auto;
            width: 80%;
            max-width: 600px;
        }


        .about-text {
            font-size: 20px;
            line-height: 1.5;
        }
    </style>
</head>
<body>
<div id="outline-box"></div>
   
    <h1 class="page-heading">ABOUT US</h1>
    <div class="about-content">
        <p class="about-text">Welcome to XenonStack! We are committed to finding technology solutions and delivering marvelous services to solve the challenges faced by our clients, people, and communities around the world are at the very heart of the purpose we all share. Our continuous experimentations reveal that innovation-driven enterprises are retaining and attracting young talents, leading innovations in industry and business growth..</p>
        </p>
       </div>
    <footer>
        <p>
            <a href="/terms">Terms of Service</a> |
            <a href="/privacy">Privacy Policy</a>
        </p>
    </footer>
   
</body>
</html>
