<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.SignupView" -->
<html>

<body> 
<script>
		function validateEmail()
		{
 			if(document.forms.Loginform.email.value==""||document.forms.Loginform.email.value==null)
 			{
  				alert('Please enter a Email!');
  				return false;
 			}
 		return true;
		}
		function validatePassword()
		{
 			if(document.forms.Loginform.password.value==null||document.forms.Loginform.password.value=="")
 			{
  				alert('Please Enter a password!');
  				return false;
 			}
 		return true;
		}
		
</script>
</body>
<form id="Loginform" action="" onsubmit="return(validateEmail()&& validatePassword())" method="post">
<style>	
	body
	{
	background:url('http://www.murraymac.net/GeneralImages/DarkBlueBackground.jpg');
	background-size: cover;
	background-position: center center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	font-family: 'Helvetica Neue';
	}
	</style>
<h1 align="center" style="color:white">MyTacks Log In</h1>
<br><br><br><br>
<table cellpadding="8" align="center">
 	<tr>
 	
     <td  align="right"><b><font color="white">Email</font></b></td>
      <td align="left">:<input type="email" height="30" name="email" placeholder="Email" style="border:2px solid white"><br></td>
    </tr>
     <tr>
     <td font color="white" align="right"><b><font color="white">Password</font></b></td>
      <td align="left">:<input type="password" height="30" name="password" placeholder="Password" style="border:2px solid white"><br></td>
    </tr>
   </table>
  <br><i><center> <font color=red>Forgot Password?</font></i><a href="http://localhost:8080/MyTacks/ResetPassword">Reset Password !</a> </center><br>
<center><input type="submit" value="Log In"></center>
</form>
</div>
</html>