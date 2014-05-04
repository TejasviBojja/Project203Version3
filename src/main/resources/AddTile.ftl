<html>

<head>

<meta charset="utf8"/>

<link rel="stylesheet" href"style.css" type="text/css" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<style>
#popup_form{
position: absolute;
border: 5px solid lightblue;
padding: 10px;
background: white;
width: 500px;
height: 370px;
z-index: 200;
}
</style>

<script type="text/javascript">
{


//close popup
$("#close, #popup_form").click(function(){

$("#Main_Page").fadeOut(500);
});


$("#upload_form").css({
left: ($(window).width() - $('#upload_form').width()) / 2,
top: ($(window).width() - $('#upload_form').width()) / 7,
position:'absolute'
});
}


$("#popup_form").css({
left: ($(window).width() - $('#popup_form').width()) / 2,
top: ($(window).width() - $('#popup_form').width()) / 7,
position:'absolute'
})
}
//maintain the popup at center of the page when browser resized
$(window).bind('resize',positionPopup);
</script>

<script>
function popUp(){

$("#popup_form").fadeIn(500);
$("#Main_page").fadeOut(1000);

}

function popUpPickb(){
ImageURL= document.getElementById('url').value
document.getElementById('mypic').setAttribute('src',ImageURL) 
$("#pickB_form").fadeIn(1000);
$("#upload_form").fadeOut(500);

}

function closepopupBoard(){
$("#Main_page").fadeIn(1000);
$("#pickB_form").fadeOut(500);
}

function upload(){
$("#upload_form").fadeIn(1000);
$("#Main_page").fadeOut(1000);
}

function closepopup()
{
$("#popup_form").fadeOut(500);
$("#Main_page").fadeIn(1000);
}

function closepopupFile(){
$("#Main_page").fadeIn(1000);
$("#upload_form").fadeOut(500);
}

function createBoard()
{
alert('Create Board');
}
</script>

<style>


.dash {
   border: 1px dashed #cccccc;
   border-collapse: collapse
}

.popup{
    border-radius: 7px;
    background:#6b6a63;
    margin:30px auto 0;
    padding:6px;  
    position:absolute;
    width:800px;
    top: 20%;
    left: 60%;
    margin-left: -400px;  
    margin-top: -40px;
}


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
input[type="submit"] 
{
  background: black;
  color: red;
  height: 50;
  width: 100;
  font-size:20px;
}
</style>
</head>
<body>

<form id="pickB_form" class ="popup" style="display:none" >

        <h1>
        <strong>Pick your Board</strong>
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

<form id="popup_form" class ="popup" style="display:none">
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
</form>

<form id="Main_page" action=" " method="post">

<div id="container">

<div id="header" style="color:red;border:1px solid white;background-image: url(http://www.owningpink.com/sites/default/files/images/wp/2010/01/colorful_dots.jpg); text-align=center; height:50px; width=100%">
    <span style="float: left;">
       &nbsp<input type="search" style="border:2px solid black; height:45; width:200; font-size:20px; background-color:#C8C8C8" placeholder="Search" />
            <input type="submit" value="Search"/>
    </span>
    
    <span style="float: right">
           <nav> 
           
           <ul id="navbar">
                    
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
            <h1 align="center" style="font-family:lucida calligraphy;font-size:38px;position:absolute;left:600px; margin:0; padding: 0px;color:white;"><b>MyTacks</b></h1>
    </span>
	</div>  
</div>

<br>

<h1><center> Board Name</center><h1>
<div id="center" style="border:2px solid white;width:90%; height:67px;position:absolute;left:60px;">
	<style="text-align:right;left:250px; bottom:356px;font-size=200px;"><img src="http://www.websigmas.com/wp-content/uploads/2013/03/Pinterest.jpg"  "width=50%; height=65px; border="2";>
	<p style="color:#400000 ; position:absolute;top:10px;left:77px;font-size:20px;"><b>TEJASVI BOJJA</b></p>
 	<input type="button"  onclick="popUp()" style="border:2px solid black; height:50; width:100px; position:absolute; left:700px;bottom:7px;" value="Edit Board"/>
 </div>
 
 <br>
 <br>

 <div>
 <input id="brd1" type="button" class="button1" onclick="upload()" style="float:left;height:300; width:175; background:white" value="Add a Tile">
 
 </div>

</form>

</body>
</html>