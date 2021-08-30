<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

<style type="text/css">
.form-heading {

	color:#fff;
	font-size: 25px;
	border-radius: 30px;
	background: rgb(19,40,49,1);
	padding: 12px;
	
	margin-top: 170px;
	margin-left: 510px;
	margin-right: 510px;	
}

.input-type{
	padding: 12px 20px;
	border: none;
	border-bottom: 2px solid rgb(19,40,49,1);
}

.button-type{

	color:#fff;
	font-size: 25px;
	border-radius: 30px;	
	background: rgb(19,40,49,1);
	padding: 12px;
	margin-top: 20px;
	margin-left: 400px;
	margin-right: 400px;	
	font-size: 12px;
	width: 180px;
}

</style>

</head>
<body>

<h1 style="text-align: center" class="form-heading" >Admin Login</h1> <br> 
<div class="row">
	<div class=col-sm-4>
	<form method="post" action="loginv.jsp">
		<div align="center">
			<input class="input-type" type="text" name="uname" placeholder="username" size=30px />
		</div> <br>
		
		<div align="center">
			<input class="input-type" type="password" name="password" placeholder="password" size=30px />
		</div> <br>
		<div align="center">
			<input class="button-type" type="submit" id="submit" value="submit" name="submit"/>
		
			<input class="button-type" type="reset" id="reset" value="reset" name="reset"/> <br>
		</div>
	
	
	</form>
	
	</div>
	
</div>
</body>
</html>