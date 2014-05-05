<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.LandingPageView" -->
﻿<html>
<head>
<meta charset="utf8"/>
<link rel="stylesheet" href"style.css" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
 
<script>
 $(function() {
    var availableCategories = [
      "Music",
      "Education",
      "Literature",
      "Movies",
      "Travel",
      "Art",
      "Videos",
      "Technology",
      "Humour",
      "Home",
      "Animal",
      "Cars",
      "Popular",
      "Fashion",
      "Sports",
      "Images"
    ];
    $( "#categories" ).autocomplete({
      source: availableCategories
    });
  });
  </script>

<script type="text/javascript">
{


//close popup
$("#close, #overlay_form").click(function(){

$("#Landing_Page").fadeOut(500);
});
});

$("#overlay_form").css({
left: ($(window).width() - $('#overlay_form').width()) / 2,
top: ($(window).width() - $('#overlay_form').width()) / 7,
position:'absolute'
});
}

$("#upload_form").css({
left: ($(window).width() - $('#upload_form').width()) / 2,
top: ($(window).width() - $('#upload_form').width()) / 7,
position:'absolute'
});
}

$("#pickB_form").css({
left: ($(window).width() - $('#pickB_form').width()) / 2,
top: ($(window).width() - $('#pickB_form').width()) / 7,
position:'absolute'
});
}
//maintain the popup at center of the page when browser resized
$(window).bind('resize',positionPopup);
</script>

<style>
#overlay_form{
position: absolute;
border: 5px solid lightblue;
padding: 10px;
background: white;
width: 500px;
height: 370px;
z-index: 200;
}

#upload_form{
position: absolute;
border: 5px solid lightblue;
padding: 10px;
background: white;
width: 450px;
height: 200px;
z-index: 200;
}

#pickB_form{
position: absolute;
border: 5px solid lightblue;
padding: 10px;
background: white;
width: 500px;
height: 400px;
z-index: 200;
}

</style>

<script>
var boardName;
var decsription;
var category;
var ImageURL;
var ImageDescription;
var BoardCategory;

function popUp(){
$("#overlay_form").fadeIn(1000);
$("#Landing_Page").fadeOut(500);

}

function popUpFile(){
$("#upload_form").fadeIn(1000);
$("#Landing_Page").fadeOut(500);

}
function closepopup(){
$("#Landing_Page").fadeIn(1000);
$("#overlay_form").fadeOut(500);
}
function closepopupFile(){
$("#Landing_Page").fadeIn(1000);
$("#upload_form").fadeOut(500);
}

function popUpPickb(){
ImageURL= document.getElementById('url').value
document.getElementById('mypic').setAttribute('src',ImageURL) 
$("#pickB_form").fadeIn(1000);
$("#upload_form").fadeOut(500);

}
function closepopupBoard(){
$("#Landing_Page").fadeIn(1000);
$("#pickB_form").fadeOut(500);
}


function createBoard(){
boardName= document.getElementById('boardname').value
description= document.getElementById('boarddescription').value
category= document.getElementById('boardcategory').value
window.location.href="AddTile?name="+ name+"&description="+description+"&category="+category;
}

function FileUpload(){

$("#upload_form").fadeOut(500);
$("#pickBoard_form").fadeIn(1000);

}

function PickBoard(){
ImageDescription= document.getElementById('imageDescription').value
BoardCategory=document.getElementById('boardCategory').value
window.location.href="register?name="+ namein +"&ampdescription="+description;
}


function imagedisplay(){
alert('in function');
}


</script>
</head>
<style>
.popup{
    border-radius: 7px;
    background:#6b6a63;
    margin:30px auto 0;
    padding:6px;  
    // here it comes
    position:absolute;
    width:800px;
    top: 20%;
    left: 60%;
    margin-left: -400px; // 1/2 width
    margin-top: -40px; // 1/2 height
}

.button1 {
font-family: Verdana, Arial, Helvetica, sans-serif; 
font-size: 12px; 
font-weight: bold; 
color: #003366
border: #00ffff;
border-style: dashed;
border-width: 5px;
border-color:yellow;
background-image:url(https://cdn3.iconfinder.com/data/icons/buttons/512/Icon_11-128.png);
}

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
<form id="Landing_Page" action=" " method="post">
<div id="container">
<input type="button" name="Create Board" value="Create Board" onclick="popUp()">

<input type="button" name="fileUpload" value="+" onclick="popUpFile()">


<div id="header" style="color:red;border:1px solid white;background-image: url(http://www.owningpink.com/sites/default/files/images/wp/2010/01/colorful_dots.jpg); text-align=center; height:50px; width=100%">
    <div id="search>
    <form action="/LandingPage/" method="GET" name="search">
    <span style="float: left;">
            &nbsp<input id="categories" type="search" style="border:2px solid black; height:45; width:200; font-size:20px; background-color:#C8C8C8" placeholder="Search" autocomplete="on" />
            <input type="submit" value="Search"/>
    </span>
    </form>
    </div>
    
    <span style="float: right">
           <nav> 
          
           <ul id="navbar">
                   
           <li><a href="http://localhost:8080/MyTacks/LandingPage"><b></b></a>
			<div>
				<ul>
					<li><a href="http://localhost:8080/MyTacks/LandingPage"><b>YOUR PROFILE</b></a></li>
					<li><a href="http://localhost:8080/MyTacks/EditProfile"><b>EDIT PROFILE</b></a></li>
					<li><a href="products.html#chair"><b>SETTINGS</b></a></li>
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
<h1 style="color:#400000 ; position:absolute;top:20px;left:210px;"><b></b></h1>
</div>

&nbsp  <div id="center1" style="border:2px solid white;background-image: url(http://en.clipdealer.com/preview/image/000/385/426/previews/4--385426-Particle%20party%20on%20white%20background.jpg); background-size: cover; background-position: center center; background-repeat: no-repeat;background-attachment: fixed;position:absolute; right:350px;width:22%; height:205px;bottom:355px;">
<h1 style="font-size:20px;">Pins from:</h1>
<button style= width:15%; height:25% ;">
<img src="http://www.websigmas.com/wp-content/uploads/2013/03/Pinterest.jpg" width="50%";height="25%"; />
</button>
<input id="brd1" type="button" class="button1" onclick="popUp()" style="float:left;height:300; width:175; background:white" value="Create a Board">
</div>
</div>
</form>


 <form id="upload_form" class ="popup" style="display:none" >

        <h1>
        <strong>Upload Tile</strong>
   		</h1>

      <h3 >Choose File </h3>
	  <input type="text" name="imageUrl" id="url"  placeholder="Enter your image URL?">
		<br><br>
		
      <div class="formFooter">
      	<div class="formFooterButtons">
            
        	<button type="button" onclick="closepopupFile()" class="">     
				<span class="buttonText">Cancel</span>
       		</button>
 
            <button type="button" onclick="popUpPickb()" class="">   
			<span class="buttonText">Next</span>
        	</button>
        </div>
     </div>
</form>

<form id="pickB_form" class ="popup" style="display:none" >

        <h1>
        <strong>Pick a Board</strong>
   		</h1>
<table cellpadding="30">
<tr>
	<td>
      <h3 >Category </h3>
      <h3><label for="ImageEditDescription">Description</label></h3>
     
      <input type="textarea" name="name" id="Imagedescription"  placeholder="Tell us about your image?" value="">
    </td>
    <td align="right">
      <img id="mypic" src="neutral.jpg" height="200" width="200">  
     </td>
</tr>
<tr>
	<td>
      <div class="formFooter">
      	<div class="formFooterButtons">
            
        	<button type="button" onclick="closepopupBoard()" class="">     
				<span class="buttonText">Cancel</span>
       		</button>
 
            <button type="button" onclick="PickBoard()" class="">   
			<span class="buttonText">Pin Image</span>
        	</button>
        </div>
     </div>
    </td>
</tr>
</table>
</form>

<form id="overlay_form" class ="popup" style="display:none">
        <strong>Create a Board</strong>
      	<h3 >Name</h3>
     	<input type="text" name="name" id="boardname"  placeholder="Like “Places to Go” or “Recipes to Make.”" value="">
           
        <h3><label for="boardEditDescription">Description</label></h3>
       <input type="textarea" name="name" id="boarddescription"  placeholder="What's your board about?" value="">
    
              
       <h3><label for="boardEditCategory">Category</label></h3>     
    
		<select id="boardcategory">
	  		<option value="other">What kind of board is it?</option>
  			<option value="music">Music</option>
  			<option value="education">Education</option>
  			<option value="literature">Literature</option>
  			<option value="travel">Travel</option>
  			<option value="home">Home</option>
  			<option value="cars">Cars</option>
  			<option value="popular">Popular</option>
  			<option value="fashion">Fashion</option>
  			<option value="sports">Sports</option>
  			<option value="images">Images</option>
		</select>
         	<div class="formFooter">
        		<div class="formFooterButtons">
            	<button type="button" onclick="closepopup()" class="rounded Button hasText Module ajax btn cancelButton">    
					<span class="buttonText">Cancel</span>
        		</button>

            	<button type="button" onclick="createBoard()" class="hasText rounded saveBoardButton Button primary Module ajax btn">    
					<span class="buttonText">Create Board</span>
        		</button>
        	</div>
        	
        	</div>
        </div>
       </form>
</body>
</html>
