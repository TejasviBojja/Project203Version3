<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.ResetPasswordEmailView" -->
<html>
<body> 
<script>
function successPage(){
	window.location.href="PasswordChangeSuccess";
}
</script>
</body>
<form method="post">
<div style="text-align:center;  ; height: 400px; width: 450px; border: 1px solid black; margin:0 auto;">
<h3 align="center" style="font-family:lucida calligraphy;font-size:30px;color:red">MyTacks<h3>
<h6 align="center" style="font-family:lucida calligraphy;font-size:10px;color:black">Please Enter password to change:<h6>
<br>
<br>
<br>
<br>
<br>
<table cellpadding="8" align="center">
 	<tr>
      <td align="left"><input type="password" name="password" placeholder="Password" style="border:2px solid ;height:45;width:250"><br></td>
       </tr>
       <tr>
       <td align="left"><input type="password" name="cpassword" placeholder="Re-Enter Password" style="border:2px solid ;height:45;width:250"><br></td>
    </tr>
   </table>
   <br>
<input type="submit"  style="background-color:white; width:185; height:35" value="Change Password"><br><br>
</form>
</div>