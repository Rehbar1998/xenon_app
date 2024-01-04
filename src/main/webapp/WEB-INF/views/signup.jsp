<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<title>Sign Up</title>
<style>
  * { box-sizing: border-box; }
  h1 {
	    color: black;
	    font-size: 38px;
	    text-align: center;
	    margin-top: 40px;
	    font-family: Garamond;
	    font-weight: bold;
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
  #signup-container {
    display: flex;
    justify-content: center;
    font-family: "Times New Roman", Times, serif;
    align-items: center;
    height: calc(100vh - 240px);
  }
  #signup-box {
    background-color: white;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    padding: 40px;
    width: 400px;
  }
  #signup-title {
    font-size: 24px;
    margin-bottom: 20px;
  }
  #signup-form {
    display: flex;
    flex-direction: column;
  }
  .input-field {
    margin-bottom: 15px;
  }
  label {
    font-weight: bold;
    margin-right:40px;
    font-size: 18px;
  }
  input[type="text"],
  input[type="email"],
  input[type="password"] {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin:auto;
    align-items: center;
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
</style>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
</head>
<body>
<div id="outline-box"></div>

<h1>Welcome </h1>
<div id="signup-container">
<div id="signup-box">
  <div id="signup-title">Create an Account</div>
  <form id="signup-form" action="/signup" method="post">
    <div class="input-field">
      <label for="username">UserName</label>
      <input type="text" id="username" name="username" required>
    </div>
    <div class="input-field">
      <label for="email">Email</label>
     <input type="email" id="email" name="email" style="margin-left: 30px;" required>
    </div>
    <div class="input-field">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" required>
    </div>
    <button class="s" type="submit" onclick="showSuccessMessage()">Sign Up</button>
  </form>
</div>
</div>
<footer>
  <p>
    <a href="/terms">Terms of Service</a> |
    <a href="/privacy">Privacy Policy</a>
  </p>
</footer>
<script>
 
  function showSuccessMessage() {
      alert("Sign up successful! Thank you for joining us.");
  }
</script>
</body>
</html>
