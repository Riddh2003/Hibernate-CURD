<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="p-6">
    <div class="container mx-auto">
    	<div class="flex justify-center items-center gap-6 mb-6">    	
	        <h1 class="text-2xl font-bold text-blue-800">User List</h1>
	        <a href="signup" class="px-4 py-2 rounded font-medium text-blue-600 hover:text-blue-800 bg-gray-100 shadow-md">SignUp</a>
    	</div>
        <div class="overflow-x-auto flex justify-center">
            <table class="w-8/12 bg-white shadow-md rounded-lg overflow-hidden">
                <thead class="bg-blue-800 text-white">
                    <tr class="text-center">
                        <th class="w-1/3 px-4 py-2">User ID</th>
                        <th class="w-1/3 px-4 py-2">User Name</th>
                        <th class="w-1/3 px-4 py-2">User Email</th>
                        <th class="w-1/3 px-4 py-2">Action</th>                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${user}" var="u">
                        <tr class="border-b text-center bg-gray-100">
                            <td class="px-4 py-2 text-gray-700">${u.userId}</td>
                            <td class="px-4 py-2 text-gray-700">${u.username}</td>
                            <td class="px-4 py-2 text-gray-700">${u.useremail}</td>
                            <td class="px-4 py-2 text-blue-700"><a href="deleteuser?userId=${u.userId}">DELETE</a></td>                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
