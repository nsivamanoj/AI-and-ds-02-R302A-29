<!DOCTYPE html>
<html>
<head>
	<title>My JSP Page</title>
	<style>
		.container {
			display: flex;
			align-items: center;
			justify-content: center;
			height: 100vh;
		}

		.image {
			width: 50%;
			padding-right: 50px;
			box-sizing: border-box;
		}

		.buttons {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			width: 50%;
			box-sizing: border-box;
		}

		.button {
			margin: 10px;
			padding: 15px 30px;
			border: none;
			border-radius: 30px;
			font-size: 20px;
			font-weight: bold;
			color: white;
			background-color: #3f51b5;
			cursor: pointer;
			text-decoration: none;
			transition: background-color 0.2s ease-in-out;
		}

		.button:hover {
			background-color: #283593;
		}
		
		.navbar {
			background-color: #000;
			color: #fff;
			display: flex;
			justify-content: space-between;
			align-items: center;
			padding: 20px;
		}

		.logout-btn {
			background-color: #fff;
			color: #000;
			border: none;
			padding: 10px 20px;
			border-radius: 5px;
			cursor: pointer;
			font-weight: bold;
			text-decoration: none;
		}

		.logout-btn:hover {
			background-color: #000;
			color: #fff;
		}
	</style>
</head>
<body>
<% String s = request.getContextPath() +"/index.jsp"; %>
	<nav class="navbar">
		<!-- Add your website name or logo here -->
		<span>Admin Page</span>
		<a class="logout-btn" href="<%= s %>" >Logout</a>
	</nav>
	
	<div class="container">
		<div class="image">
			<img src="klu.jpg" alt="Your Image">
		</div>
		<div class="buttons">
			<a class="button" href="addsurvey.jsp">Add Survey</a>
			<a class="button" href="deleteuser.jsp">Delete User</a>
			<a class="button" href="">Remove Survey</a>
		</div>
	</div>
</body>
</html>