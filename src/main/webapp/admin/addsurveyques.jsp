<!DOCTYPE html>
<html>
<head>
	<title>Create a Form</title>
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
		input[type=text], input[type=email] {
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
	<form method="post">
		<h1>Add Survey Questions</h1>
		<label for="question">Add a Question:</label>
		<input type="text" name="question" id="question" required>
		<label for="option1">Add Option 1:</label>
		<input type="text" name="option1" id="option1" required>
		<label for="option2">Add Option 2:</label>
		<input type="text" name="option2" id="option2" required>
		<label for="option3">Add Option 3:</label>
		<input type="text" name="option3" id="option3" required>
		<label for="option4">Add Option 4:</label>
		<input type="text" name="option4" id="option4" required>
		<button type="submit">Submit</button>
	</form>
</body>
</html>
