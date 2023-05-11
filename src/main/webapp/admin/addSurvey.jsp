<!DOCTYPE html>
<html>
<head>
	<title>Enter Form Name</title>
	<style>
		body {
			background-color: #f2f2f2;
		}
		form {
			margin: auto;
			max-width: 600px;
			padding: 2em;
			background-color: white;
			border-radius: 5px;
			box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
			font-family: Arial, sans-serif;
		}
		input[type=text] {
			padding: 0.5em;
			margin-bottom: 1em;
			border: 1px solid #ccc;
			border-radius: 5px;
			width: 100%;
			box-sizing: border-box;
		}
		label {
			display: block;
			font-size: 1.2em;
			font-weight: bold;
			margin-bottom: 0.5em;
		}
		button[type=submit] {
			padding: 0.5em 1em;
			font-size: 1.2em;
			background-color: #4CAF50;
			color: white;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}
	</style>
</head>
<body>
	<form method="post" action="adminhomepage.jsp">
		<h1>Enter Form Name</h1>
		<label for="formName">Form Name:</label>
		<input type="text" name="formName" id="formName" required>
		<button type="submit">Submit</button>
	</form>
</body>
</html>
