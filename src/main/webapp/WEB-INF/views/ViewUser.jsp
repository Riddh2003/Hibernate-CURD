<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View User</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
    <div class="flex h-screen justify-center items-center">
        <div class="bg-white shadow-xl rounded-lg px-8 py-6 max-w-md w-full">
            <h1 class="text-3xl font-bold text-center text-blue-600 mb-6">View User</h1>
            <div class="space-y-4">
                <div class="flex items-center border-b border-gray-200 pb-2">
                    <span class="text-gray-600 font-semibold w-1/3">User ID:</span>
                    <span class="text-blue-800 font-medium">${user.userId}</span>
                </div>
                <div class="flex items-center border-b border-gray-200 pb-2">
                    <span class="text-gray-600 font-semibold w-1/3">Username:</span>
                    <span class="text-blue-800 font-medium">${user.username}</span>
                </div>
                <div class="flex items-center border-b border-gray-200 pb-2">
                    <span class="text-gray-600 font-semibold w-1/3">Email:</span>
                    <span class="text-blue-800 font-medium">${user.useremail}</span>
                </div>
            </div>
			<div class="mt-4 flex justify-center">
				<a href="userlist" class="px-4 py-2  rounded font-medium text-blue-600 hover:text-blue-800 bg-gray-100 shadow-md">Back</a>
			</div>
        </div>
    </div>
</body>
</html>