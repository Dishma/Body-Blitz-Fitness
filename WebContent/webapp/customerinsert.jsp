<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<title>Body Blitz Fitness</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body, h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url(images/image4.jpg);
  min-height: 100%;
  background-position: right;
  background-size: cover;
  position: relative;
}
.navbar-transparent {
  background-color: transparent !important;
}
.navbar-brand img {
  max-height: 100px;
  max-width: auto;
}
.navbar-nav .nav-link {
  color: black !important;
}
.navbar-nav {
  flex-grow: 1;
  justify-content: center;
}
.glass-card {
    max-width: 450px;
    min-height: 450px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 35px;
    border: 1px solid rgba(255, 255, 255, 0.25);
    border-radius: 20px;
    background-color: rgba(255, 255, 255, 0.45);
    box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.25);
    backdrop-filter: blur(30px);
    margin: 50px auto 20px auto; /* Added top margin to avoid overlap */
    color: #224;
    text-align: center;
}

.glass-card h2 {
    color: #333;
    margin-bottom: 15px;
}

.glass-card p:not(:last-child) {
    margin-bottom: 1.5em;
}



.glass-card button {
    background-color: #333; /* Darker background color */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin: 5px;
    transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
    width:44%;
}

.glass-card button:hover {
    background-color: #555; /* Darker hover color */
    transform: scale(1.05); /* Slightly increase size */
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3); /* Add a shadow effect */
}


input[type=text],
input[type=password] {
	width: 90%;
	padding: 10px;
	border: 0px;
	box-sizing: border-box;
	border-radius: 5px;
}


</style>

</head>
<body>

<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
  
  <header>
    <nav class="navbar navbar-expand-lg navbar-light navbar-transparent">
      <div class="container-fluid d-flex justify-content-between align-items-center">
        <ul class="navbar-nav">
          <!-- Navigation items can be added here if needed -->
        </ul>
        <a class="navbar-brand" href="landing.jsp">
          <img src="images/logo3.png" alt="Body Blitz Fitness Logo">
        </a>
        <ul class="navbar-nav">
          <!-- Navigation items can be added here if needed -->
        </ul>
      </div>
    </nav>
  </header>
  
  

  <div class="glass-card">
  
  <h2>Become a Member of Body Blitz Fitness</h2><br></br>
    <form class="form-group" action="customerinsert" method="post">
      
      	<label for="name"><b>Name</b></label>
        <input type="text" placeholder="Enter Name" name="name" required>
       
        <label for="email"><b>E-mail</b></label>
        <input type="text" placeholder="Enter E-mail" name="email" required>
      
        <label for="username"><b>Phone Number</b></label>
        <input type="text" placeholder="Enter your Phone Number" name="phone" required>
      	
        <label for="username"><b>User Name</b></label>
        <input type="text" placeholder="Enter Username" name="username" required>
		
		
        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>
        <br></br>

        <button type="submit" value="submit" name="submit">Register</button>
        <button type="button" onclick="location.href='landing.jsp'">Cancel</button>
       
      
    </form>
    
    
  </div>
  <footer>
    <nav class="navbar navbar-expand-lg navbar-light navbar-transparent">
      <div class="container-fluid d-flex justify-content-between align-items-center">
        <ul class="navbar-nav">
         
        </ul>
        <ul class="navbar-nav">
          
        </ul>
      </div>
    </nav>
  </footer>
</div>
</body>
</html>