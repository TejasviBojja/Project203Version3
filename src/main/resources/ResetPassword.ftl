<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.ResetPasswordView" -->
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
		
		
</script>
</body>
<form id="RPform" action="" onsubmit="return(validateEmail())" method="post">

<style>
body
{
background:url(http://hd.wallpaperswide.com/thumbs/light_background-t2.jpg);
background-size: cover;
background-position: center center;
background-repeat: no-repeat;
background-attachment: fixed;
}
</style>

<center><input type="submit" style="background:#14293D;color:white;width:120;height:35" value="Reset Password"></center>

<table cellpadding="8" align="center">
 	<tr>
      <td align="left"><input type="email" name="email" placeholder="Email" style="border:2px solid white;height:45;width:250"><br></td>
    </tr>
    
   </table>
   <br>
<input type="submit" style="background-color:red;width:120;height:35" value="Reset Password">
</form>
</div>
</html>