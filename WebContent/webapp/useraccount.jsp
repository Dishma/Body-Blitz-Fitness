<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
    

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Body Blitz Fitness</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body, h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url(images/image7.jpg);
  min-height: 100%;
  background-position: left;
  background-size: cover;
  position: relative;
}
.navbar-transparent {
  background-color: transparent !important;
}
.navbar-brand img {
  max-height: 100px; /* Adjust the height as needed */
  max-width: auto; /* Adjust the width as needed */
}
.navbar-nav .nav-link {
  color: black !important;
}
.navbar-nav {
  flex-grow: 1;
  justify-content: center;
}
.glass-card {
    max-width: 400px;
    min-height: 400px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 35px;
    border: 1px solid rgba(255, 255, 255, 0.25);
    border-radius: 20px;
    background-color: rgba(255, 255, 255, 0.45);
    box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.25);
    backdrop-filter: blur(50px);
    margin: 100px auto 20px auto; /* Added top margin to avoid overlap */
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

.glass-card ul {
    list-style-type: none;
    padding: 0;
    margin-bottom: 1.5em;
}

.glass-card ul li {
    background: url('check-icon.png') no-repeat left center;
    margin-bottom: 10px;
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
}
.glass-card a {
    background-color: #333; /* Darker background color */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin: 5px;
    transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
}
.glass-card a:hover {
    background-color: #555; /* Darker hover color */
    transform: scale(1.05); /* Slightly increase size */
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3); /* Add a shadow effect */
}


.glass-card button:hover {
    background-color: #555; /* Darker hover color */
    transform: scale(1.05); /* Slightly increase size */
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3); /* Add a shadow effect */
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
        <a class="navbar-brand" >
          <img src="images/logo4.png" alt="Body Blitz Fitness Logo" onclick="location.href='landing.jsp'">
        </a>
        <ul class="navbar-nav">
          
        </ul>
      </div>
    </nav>
  </header>
    
        <c:forEach var="cus" items="${cusDetails}">
        
        <c:set var="id" value="${cus.id}"/>
        <c:set var="name" value="${cus.name}"/>
        <c:set var="email" value="${cus.email}"/>
        <c:set var="phone" value="${cus.phone}"/>
        <c:set var="username" value="${cus.username}"/>
        <c:set var="password" value="${cus.password}"/>
        
        
        <div class="w3-display-middle">
            <div class="glass-card">
                    
                    <h2>${cus.name}</h2>
                    <p>${cus.email} | ${cus.phone}</p>
                    <ul>
                        <li>ID:</strong> ${cus.id}</li>
                        <li>User Name:</strong> ${cus.username}</li>
                        <li>Password:</strong> <span class="password"
                                style="display:none;">${cus.password}</span> <i
                                class="fas fa-eye eye-icon" onclick="togglePasswordVisibility(this)"></i></li>
                    </ul>
                    <div>(Click the <i
                                class="fas fa-eye eye-icon""></i> icon to reveal password)
                    </div>
               
               
        <c:url value="updatecustomer.jsp" var="cusupdate">
    	<c:param name="id" value="${id}"></c:param>
    	<c:param name="name" value="${name}"></c:param>
    	<c:param name="email" value="${email}"></c:param>
    	<c:param name="phone" value="${phone}"></c:param>
    	<c:param name="username" value="${username}"></c:param>
    	<c:param name="password" value="${password}"></c:param>
    	</c:url>
    
		<a href="${cusupdate}" type="button" class="btn btn-dark" name ="update" value="Update Data">Update Details
        </a> 
        
        <c:url value="deletecustomer.jsp" var="cusdelete">
        <c:param name="id" value="${id}"></c:param>
        <c:param name="name" value="${name}"></c:param>
        <c:param name="email" value="${email}"></c:param>
        <c:param name="phone" value="${phone}"></c:param>
        <c:param name="username" value="${username}"></c:param>
        <c:param name="password" value="${password}"></c:param>
        </c:url> 
        <a href="${cusdelete}" type="button" class="btn btn-dark" name ="delete" value="Delete Data" >Delete Profile
        </a>
        
        <button type="button" class="cancelbtn" onclick="location.href='landing.jsp'">Cancel</button>   
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
        </c:forEach>
        
        
    </div>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function togglePasswordVisibility(icon) {
            var passwordField = icon.previousElementSibling;
            if (passwordField.style.display === "none") {
                passwordField.style.display = "inline";
                icon.classList.remove("fa-eye");
                icon.classList.add("fa-eye-slash");
            } else {
                passwordField.style.display = "none";
                icon.classList.remove("fa-eye-slash");
                icon.classList.add("fa-eye");
            }
        }
        
        window.onload = function() {
            var updateStatus = '${updateStatus}';
            console.log(updateStatus);
            if (updateStatus === "success") {
                alert("Successful!");
            } else if (updateStatus === "failure") {
                alert("Unsuccessful. Please try again.");
            }
        };

    </script>
    

</body>

</html>





