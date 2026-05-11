<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div class="messages"><div class="message success">${pass}</div><div class="message error">${fail}</div></div>
<h1>Recruiter Home</h1>
<a href="/recruiter/add-job"><button>Add Job</button></a>
<a href="/recruiter/view-jobs"><button>View Jobs</button></a>
<a href="/recruiter/view-applications"><button>See Applications</button></a>
<a href="/logout"><button>Logout</button></a>
</body>
</html>