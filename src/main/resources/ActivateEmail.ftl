<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.ActivateEmailView" -->
<html>
<body> 
<script>
function loginPage(){
	window.location.href="signup";
}
</script>
</body>

<style>	
	body
	{
	background:url('wallpaper.jpg');
	background-size: cover;
	background-position: center center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	font-family: 'Helvetica Neue';
	}
	</style>
<form >
<div style="text-align:center;  ; height: 400px; width: 450px; border: 1px solid black; margin:0 auto;">
<h3 align="center" style="font-size:30px;color:white">MyTacks<h3>
<h5 align="center" style="color:white">Your email has been verified successfully !! Please Login to continue</h5>

<br>
<br>
<br>
<br>
<br>
<input type="button" onclick="loginPage()" style="background-color:white; width:185; height:35" value="Log In"><br><br>

</form>
</div>