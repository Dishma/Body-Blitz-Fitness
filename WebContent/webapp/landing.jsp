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
  background-image: url(images/image2.jpg);
  min-height: 100%;
  background-position: right;
  background-size: cover;
  position: relative;
}
.navbar-transparent {
  background-color: transparent ;
}
.navbar-brand img {
  max-height: 100px;
  max-width: auto;
}
.navbar-nav .nav-link {
  color: black;
}
.navbar-nav {
  flex-grow: 1;
  justify-content: center;
}
.glass-card {
    max-width: 500px;
    min-height: 450px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 35px;
    border: 1px solid rgba(255, 255, 255, 0.25);
    border-radius: 20px;
    background-color: rgba(255, 255, 255, 0.45);
    box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.25);
    backdrop-filter: blur(0px);
    margin: 100px auto 20px auto;
    color: #224;
    text-align: center;
}

.glass-card h2 {
    color: #333;
    margin-bottom: 15px;
}

.glass-card p:not(:last-child) {
    margin-bottom: 5px;
}

.glass-card ul {
    list-style-type: none;
    padding: 0;
    margin-bottom: 2px;
}

.glass-card ul li {
    background: url('check-icon.png') no-repeat left center;
    margin-bottom: 1px;
}

.glass-card button {
    background-color: #333;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin: 5px;
    transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
}

.glass-card button:hover {
    background-color: #555;
    transform: scale(1.05);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
}

.glass-card blockquote {
    font-style: italic;
    color: #888;
    margin: 20px 0;
}

.glass-card-footer {
    font-size: 1em;
    color: #446;
}


</style>
</head>
<body>

<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
  <!-- Transparent Header -->
  <header>
    <nav class="navbar navbar-expand-lg navbar-light navbar-transparent">
      <div class="container-fluid d-flex justify-content-between align-items-center">
        <ul class="navbar-nav">
         
        </ul>
        <a class="navbar-brand" href="#">
          <img src="images/logo3.png" alt="Body Blitz Fitness Logo">
        </a>
        <ul class="navbar-nav">
          
        </ul>
      </div>
    </nav>
  </header>

<div class="w3-display-middle">
    
    <!-- Glassmorphism Card -->
	<div class="glass-card">
	    <h2>Welcome to Body Blitz Fitness</h2>
	    <p>Join us to achieve your fitness goals with our state-of-the-art facilities and expert trainers.</p>
	    <ul>
	        <li>Personal Training</li>
	        <li>Group Classes</li>
	        <li>Nutrition Guidance</li>
	        <li>Modern Equipment</li>
	    </ul>
	    <button type="button" class="btn btn-dark" data-mdb-ripple-init onclick="location.href='home.jsp'">Take a Look at our Website</button>
	    <button type="button" class="btn btn-dark" data-mdb-ripple-init onclick="location.href='customerinsert.jsp'">Join Us !</button>
	    <button type="button" class="btn btn-dark" data-mdb-ripple-init onclick="location.href='login.jsp'">Login</button>
	    
	    <p class="glass-card-footer">Call us: (123) 456-7890</p>
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
  
</div>


</body>
</html>
