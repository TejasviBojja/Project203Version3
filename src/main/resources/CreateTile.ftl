<html>
<head>
<title>A very Simple jQuery Popup</title>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
//open popup
function popUp{
$("#overlay_form").fadeIn(1000);
$(".background_overlay").fadeIn(500);
positionPopup();
});
//close popup
$("#close, .background_overlay").click(function(){
$("#overlay_form").fadeOut(500);
$(".background_overlay").fadeOut(500);
});
});
//position the popup at the center of the page
function positionPopup(){
if(!$("#overlay_form").is(':visible')){
return;
}
$("#overlay_form").css({
left: ($(window).width() - $('#overlay_form').width()) / 2,
top: ($(window).width() - $('#overlay_form').width()) / 7,
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
height: 375px;
z-index: 200;
}
#pop{
display: block;
border: 1px solid gray;
width: 200px;
text-align: center;
padding: 6px;
border-radius: 5px;
text-decoration: none;
margin: 0 auto;
z-index: 100;
}
.background_overlay { position: fixed; left: 0px; top: 0px; width: 100%; height: 100%; z-index: 1; background:black; opacity: 0.5;}
</style>
</head>
<body>
<a href="#" id="pop" >PopUp</a>
<br />
<div class="background_overlay" style="display:none"></div>
<form id="overlay_form" style="display:none">

        <h1>
        <strong>Create a Tile</strong>
    </h1>
    <ul>
      <li>
      <h3><label for="tileEditName">Tile Name</label></h3>
                                <div>
      <input id="tileEditName" name="name" type="text" placeholder="text" value="">
      </div>
            </li>
            <li>
        <h3><label for="tileEditDescription">Tile Description</label></h3>
       <div>
      <textarea id="tileEditDescription" class="tileEditDescription" placeholder="text" name="description"></textarea>
                </div>
            </li>
            
      <li>      
     <h3><label for="tileEditDescription">Upload Image</label></h3>
           
    <input type="file" name="pic" accept="image/*"></input>
    </li>
    <br>
            
        <div class="formFooter">
        <div class="formFooterButtons">
            <button type="button" class="rounded Button hasText Module ajax btn cancelButton">    


<span class="buttonText">Cancel</span>
        </button>

            <button type="submit" class="hasText rounded saveBoardButton Button primary Module ajax btn">    


<span class="buttonText">Create Tile</span>
        </button>
        </div>
    </div>
</form>
</form>
</body>
</html>