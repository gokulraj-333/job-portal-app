<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
  <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="messages"><div class="message success">${pass}</div><div class="message error">${fail}</div></div>  
	<h1>User Login</h1>
	<div class="container">
	<form action="/user/login" method="post">
		<table>
			<tr>
				<th>Email:</th>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<th>Password:</th>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<th colspan="2"><a href="/user/forgot-password">Forgot Password?</a></th>
			</tr>
			<tr>
				<th colspan="2"><button>Login</button></th>
			</tr>
		</table>
		</form>
		<hr>
		<a href="/user/signup"><button>Create Account</button></a>
	</div>
	<a href="/"><button>Back</button></a>
</body>
</html>