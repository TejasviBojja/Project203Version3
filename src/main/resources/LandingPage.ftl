<html>
<head>
<meta charset="utf8"/>
<link rel="stylesheet" href"style.css" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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
background:url(http://74211.com/wallpaper/picture_big/White-Flowers-in-Full-Bloom-the-Scenes-Fit-the-Visional-Theory-Enjoyable-and-Pleasant-to-See-HD-Creative-Wallpaper.jpg);
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
<script>
function popUp(){
var p=window.createPopup();
var pbody=p.document.body;
pbody.style.backgroundColor="lime";
pbody.style.border="solid black 1px";
pbody.innerHTML="This is a pop-up! Click outside the pop-up to close.";
p.show(150,150,200,50,document.body);
s
}
</script>
<div id="container">

<div id="header" style="color:red;border:1px solid white;background-image: url(http://www.owningpink.com/sites/default/files/images/wp/2010/01/colorful_dots.jpg); text-align=center; height:50px; width=100%">
    <span style="float: left;">
            &nbsp<input type="search" style="border:2px solid black; height:45; width:200; font-size:20px; background-color:#C8C8C8" placeholder="Search" />
            <input type="submit" value="Search"/>
    </span>
    
    <span style="float: right">
           <nav> 
           
           <ul id="navbar">
            <input type="button" onclick="popUp()" style="border:2px solid black; height:50; width:75" value="Create Board"/>           
           <li><a href="http://localhost:8080/MyTacks/LandingPage"><b>TEJASVI BOJJA</b></a>
			<div>
				<ul>
					<li><a href="http://localhost:8080/MyTacks/LandingPage"><b>YOUR PROFILE</b></a></li>
					<li><a href="http://localhost:8080/MyTacks/EditProfile"><b>EDIT PROFILE</b></a></li>
					<li><a href="products.html#chair"><b>SETTINGS</b></a></li>
					<li><a href="products.html#chair"><b>UPLOAD A PIN</b></a></li>
					<li><a href="http://localhost:8080/MyTacks/CreateBoard"><b>CREATE&nbspBOARD</b></a></li>
					<li><a href="http://localhost:8080/MyTacks/InviteFriend"><b>FIND FRIENDS</b></a></li>
					<li><a href="http://localhost:8080/MyTacks/home"><b>LOGOUT</b></a></li>
				</ul>
			</div>
		</li>
            </ul>
        </nav>           
    </span>
    
    <span style="float: center">
            <h1 align="center" style="font-family:lucida calligraphy;font-size:38px;position:absolute;left:550px; bottom:582px;margin:0; padding: 0px;color:white;"><b>MyTacks</b></h1>
    </span>
</div>  
</div>
<br>

<div id="container2">

<div id="center" style="border:2px solid white;background-image: url(http://en.clipdealer.com/preview/image/000/385/426/previews/4--385426-Particle%20party%20on%20white%20background.jpg);background-size: cover; background-position: center center; background-repeat: no-repeat;background-attachment: fixed;width:50%; height:205px;position:absolute;>
<style="text-align:right;left:250px; bottom:356px;font-size=200px;"><img src="http://www.websigmas.com/wp-content/uploads/2013/03/Pinterest.jpg"  "width=100%; height=200px; border="2";>
<h1 style="color:#400000 ; position:absolute;top:20px;left:210px;"><b>TEJASVI BOJJA</b></h1>
</div>

&nbsp  <div id="center1" style="border:2px solid white;background-image: url(http://en.clipdealer.com/preview/image/000/385/426/previews/4--385426-Particle%20party%20on%20white%20background.jpg); background-size: cover; background-position: center center; background-repeat: no-repeat;background-attachment: fixed;position:absolute; right:350px;width:22%; height:205px;bottom:355px;">
<h1 style="font-size:20px;">Pins from:</h1>
<button style= width:15%; height:25% ;">
<img src="http://www.websigmas.com/wp-content/uploads/2013/03/Pinterest.jpg" width="50%";height="25%"; />
</button>
</div>


</div>
   

</form>
</body>
</html>