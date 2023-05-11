<!DOCTYPE html>
<html>
<head>
	<title>My Website</title>
	<style>
		body {
			margin: 0;
			padding: 0;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: 100vh;
			background-color: #f2f2f2;
		}
		.form-container {
			background-color: #fff;
			padding: 20px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
		}

		.form-heading {
			background-color: #000;
			color: #fff;
			font-weight: bold;
			padding: 10px;
			text-align: center;
			border-top-left-radius: 10px;
			border-top-right-radius: 10px;
		}

		.form-group {
			margin: 10px 0;
			display: flex;
			flex-direction: column;
		}

		.form-label {
			font-size: 18px;
			margin-bottom: 5px;
		}

		.form-input {
			padding: 10px;
			font-size: 16px;
			border: none;
			border-radius: 5px;
			box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
		}

		.form-submit {
			background-color: #000;
			color: #fff;
			border: none;
			padding: 10px 20px;
			border-radius: 5px;
			cursor: pointer;
			font-weight: bold;
		}

		.form-submit:hover {
			background-color: #fff;
			color: #000;
		}
	</style>
</head>
<body>
	<div class="form-container">
		<div class="form-heading">
			<h1>Enter username</h1>
		</div>
		<form action="userdeleted.jsp">
			<div class="form-group">
				<label for="username" class="form-label">Username:</label>
				<input type="text" id="username" name="username" class="form-input">
			</div>
			<button type="submit" class="form-submit">Submit</button>
		</form>
	</div>
</body>
</html>
