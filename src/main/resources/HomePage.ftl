<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.HomePageView" -->
<html>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<head>
<script>

function popUp(){
$("#Create_Board").fadeIn(1000);
$("#Main_Page").fadeOut(500);

}


function createBoard(){
alert('function called');
boardName= document.getElementById('boardname').value
description= document.getElementById('boarddescription').value
category= document.getElementById('boardcategory').value
<#list register as r>
window.location.href="AddTile?email=${r.email}&name="+ boardName+"&description="+description+"&category="+category;
</#list>
}

</script>
</head>
<style>
body{
padding:5px;
font-family:helvetica;
}
#mainContainer{
width:100%;
height:100%;

}

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

.navbar{
height: 100%;
color: blue;
float: right;
font-size: 14px;
margin-top: 0px;
margin-right:5px;
padding-left: 0px;
}

/* These styles create the dropdown menus. */
.navbar {
   margin: 0;
   padding: 0;
   padding-left: 5px;
    }
.navbar li {
   list-style: none;
   position:relative;
   float: right; }
.navbar li a {
display: block;
padding: 15px 60px;
background-color: 000066;
color: white;
text-decoration: none;
width: 128px;
font-family: helvetica;
}
.navbar li ul {
   display: none; 
   /*width: 0em;*/ /* Width to help Opera out */
   background-color: black;}
.navbar li:hover ul, .navbar li.hover ul {
   display: block;
   position: absolute;
   margin: 0;
   padding: 4px;
    }
.navbar li:hover li, .navbar li.hover li {
   float: right; }
.navbar li:hover li a, .navbar li.hover li a {
   background-color: white;
   display:block;
   background: #fff;
   border-bottom: 1px solid #fff;
   color: black;
   width:120px;
   margin:0;
    }
.navbar li li a:hover {
   background-color: #E2E1F2; 
   }
   
 #Create_Board{
position: absolute;
border: 5px solid lightblue;
padding: 10px;
background: white;
width: 500px;
height: 370px;
z-index: 200;
}
 

#uploadPin{
float: left;
height: 8%;
width: 30%;
color: white;
font-size: 15px;
background-color: 000066;
}
#headerDiv{
width:60%
height:40px;
float:left;
}
#navigationBar{
width:30%
height:40px;
float:right;
}
#navDivMain{
height:45px;
float:right;
}


</style>

<form id="Main_Page">
 <span style="float: center">
            <#list register as r>

            <h1 align="center" style="font-family:lucida calligraphy;font-size:38px;position:absolute;left:600px; margin:0; padding: 0px;color:black;"><b>MyTacks</b></h1>
             <h3 align="center" style="font-family:lucida calligraphy;font-size:38px;position:absolute;left:40px; margin:0; padding: 0px;color:black;"><b>  Welcome ${r.firstName}</b></h3>
            </#list>
    </span>

<div id="mainContainer">

<div id="headerDiv"></div>
<div id="navigationBar">
  <nav id="navDivMain">
 
   	   <ul class="navbar">
   	    <#list register as r>
 	       <li><a href="http://localhost:8080/MyTacks/homepage?email=${r.email}"><b>MY PROFILE</b></a>
				<ul>
					<li><a href="http://localhost:8080/MyTacks/homepage?email=${r.email}"><b>YOUR PROFILE</b></a></li>
					<li><a href="http://localhost:8080/MyTacks/EditProfile"><b>EDIT PROFILE</b></a></li>
					<li><a href="http://localhost:8080/MyTacks/InviteFriend"><b>FIND FRIENDS</b></a></li>
					<li><a href="http://localhost:8080/MyTacks/home"><b>LOGOUT</b></a></li>
				</ul>
				
			</li>
            </ul>
   		   <ul class="navbar" >
           <li><a href="http://localhost:8080/MyTacks/LandingPage"><b>BOARDS</b></a>
				<ul>
					<li><a href="http://localhost:8080/MyTacks/ViewBoard?email=${r.email}"><b>View My Boards</b></a></li>
					<li><a href="javascript:popUp()"><b>Create a Board</b></a></li>
					<li><a href=""><b>Delete my board</b></a></li>
				</ul>
				</#list>
				</li>
            </ul>
        </nav>          
        </div> 
    </div>
 
   </form>
   
  
    
    <form id="Create_Board" class ="popup" style="display:none">
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
    <html>