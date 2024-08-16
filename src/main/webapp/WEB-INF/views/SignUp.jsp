<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100 flex items-center justify-center h-screen">
	<div class="bg-white p-6 rounded-md shadow-xl max-w-md w-full flex flex-col justify-center">
		<h1 class="text-3xl font-bold text-center mb-4 text-blue-800">Sign
			Up</h1>
		<form action="signup" method="post">
			<div class="mb-4">
				<label for="username" class="block text-gray-600 mb-2">User
					Name:</label> <input type="text" id="username" name="username"
					placeholder="Enter username"
					class="w-full p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-1 focus:ring-green-500"
					required />
			</div>

			<div class="mb-4">
				<label for="useremail" class="block text-gray-600 mb-2">Email:</label>
				<input type="email" id="useremail" name="useremail"
					placeholder="Enter email"
					class="w-full p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-1 focus:ring-green-500"
					required />
			</div>

			<div class="mb-4">
				<label for="password" class="block text-gray-600 mb-2">Password:</label>
				<input type="password" id="password" name="password"
					placeholder="Enter password"
					class="w-full p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-1 focus:ring-green-500"
					required />
			</div>

			<button type="submit"
				class="mb-6 w-full bg-blue-700 text-white p-3 rounded-lg font-semibold hover:bg-blue-800 transition duration-300">
				Sign Up</button>
			<a href="userlist"
				class="bg-gray-100 shadow-md text-center px-4 py-2 rounded font-medium text-blue-700 hover:text-blue-800 cursor-pointer transition duration-600">
				User List
			</a>
		</form>
	</div>
</body>

</html>
