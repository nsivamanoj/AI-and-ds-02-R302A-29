<!DOCTYPE html>
<html>
<head>
	<title>Login Form</title>
	<style>
		body {
			background-color: #f2f2f2;
			background-image: url('car.jpg');
			background-repeat: no-repeat;
			background-size: cover;
			background-position: center;
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}
		.container {
			background-color: #fff;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
			margin: auto;
			margin-top: 100px;
			padding: 20px;
			width: 400px;
		}
		h2 {
			text-align: center;
			margin-bottom: 20px;
		}
		label {
			display: block;
			font-weight: bold;
			margin-bottom: 5px;
		}
		input[type="text"],
		input[type="password"] {
			border: 1px solid #ccc;
			border-radius: 3px;
			padding: 5px;
			width: 100%;
			margin-bottom: 20px;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: #fff;
			border: none;
			border-radius: 3px;
			cursor: pointer;
			padding: 10px;
			width: 100%;
		}
		input[type="submit"]:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<div class="container">
		<h2>Login Form</h2>
		<form action="loginvalidate.jsp">
			<label for="username">Username:</label>
			<input type="text" id="username" name="username" required>
			<label for="password">Password:</label>
			<input type="password" id="password" name="password" required>
			<span style="color: red;">${erroradmin}</span>
			<input type="submit" value="Login">
		</form>
	</div>
</body>
</html>
