
<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.HomeView" -->
<html>
<body> 
<script>
function registerPage(){
	window.location.href="register";
}

function loginPage(){
	window.location.href="signup";
}
</script>
</body>
<style>
body{
background-image: url('http://www.murraymac.net/GeneralImages/DarkBlueBackground.jpg');
background-size: cover;
background-position: center center;
background-repeat: no-repeat;
background-attachment: fixed;
font-family: 'Helvetica Neue';
}

</style>
<form >
<div>
<h1 align="center" style="color:white">MyTacks</h1>
<h4 align="center" style="color:white">Join MyTacks to share and find all you like !!</h4>
<br>
<br>
<br>
<br>
<br>
<center><input type="submit" style="background:white;color:black;width:185; height:35" value="Sign Up With Facebook"></center><br><br>
<center><input type="button" onclick="registerPage()" style="background:white; width:185; height:35" value="Sign Up With Email"><br><br>
<i><span style="color:red;">Already have an account? </span></i><span style="color:white;"><a href="http://localhost:8080/MyTacks/signup">Log in now</a></span></center>
</form>
</div>
</html>
