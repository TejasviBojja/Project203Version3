<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.ResetPasswordSuccessView" -->
<html>
<head>
<meta charset="utf8"/>
<link rel="stylesheet" href"style.css" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script>
function returnHome1()
{
window.location.href="home";
}
</script>

</head>
<style>

/* These styles create the dropdown menus. */
#navbar {
   margin: 0;
   padding: 0;
   height: 3em;
    }
#navbar li {
   list-style: none;
   position:relative;
   float: left; }
#navbar li a {
   display: block;
   padding: 15px 100px;
   background-color:black;
   color: red;
   text-decoration: none;
   width:127px }
#navbar li ul {
   display: none; 
   /*width: 0em;*/ /* Width to help Opera out */
   background-color: black;}
#navbar li:hover ul, #navbar li.hover ul {
   display: block;
   position: absolute;
   margin: 0;
   padding: 4px;
    }
#navbar li:hover li, #navbar li.hover li {
   float: right; }
#navbar li:hover li a, #navbar li.hover li a {
   background-color: white;
   display:block;
   background: #fff;
   border-bottom: 1px solid #fff;
   color: red;
   width:120px;
   margin:0;
    }
#navbar li li a:hover {
   background-color: #200000 ; 
   }
body
{
/*background:url(http://74211.com/wallpaper/picture_big/White-Flowers-in-Full-Bloom-the-Scenes-Fit-the-Visional-Theory-Enjoyable-and-Pleasant-to-See-HD-Creative-Wallpaper.jpg);*/
background-size: cover;
background-position: center center;
background-repeat: no-repeat;
background-attachment: fixed;
}
input[type="submit"] {
  background: black;
  color: red;
  height: 50;
  width: 100;
  font-size:20px;
}
</style>
<body>
<form id= "Landing Page" action=" " method="post">

<div id="container">

<div id="header" style="color:red;border:1px solid white;background-image: url(http://www.owningpink.com/sites/default/files/images/wp/2010/01/colorful_dots.jpg); text-align=center; height:50px; width=100%">
    
    <span style="float: center">
            <h1 align="center" style="font-family:lucida calligraphy;font-size:38px;position:absolute;left:550px; bottom:540px;margin:0; padding: 0px;color:white;"><b>MyTacks</b></h1>
    </span>
</div>  
<br>


<div id="center" style="width:74%; height:450px;position:absolute;>
<style="text-align:right;left:250px; bottom:356px;font-size=200px;">
<h1 align="center" style="font-size:35px; font-family:lucida calligraphy;text-align:center;color:#400000 ; position:absolute;top:20px;left:250px;"><b><center>Check your Email and please use the link provided to change your password!!</left></b></h1>


<input type="button" onclick="returnHome1()" style="width:30%; height:40px;position:absolute;top:270px;left:500px;font-size:20px;border:2px solid black;font-family:lucida calligraphy;" value="Return to Home">
<br>
</div>

</div>
</form>
</body>
</html>