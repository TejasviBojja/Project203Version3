<html>
<head>
<title>A very Simple jQuery Popup</title>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
//open popup
$("#pop").click(function(){
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
height: 370px;
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
        <strong>Create a Board</strong>
    </h1>
    <ul>
      <li>
      <h3><label for="boardEditName">Name</label></h3>
                                <div>
      <input id="boardEditName" name="name" type="text" autofocus="" placeholder="Like “Places to Go” or “Recipes to Make.”" value="">
      </div>
            </li>
            <li>
        <h3><label for="boardEditDescription">Description</label></h3>
       <div>
      <textarea id="boardEditDescription" class="boardEditDescription" placeholder="What's your board about?" name="description"></textarea>
                </div>
            </li>
            <li>
                <h3><label for="boardEditCategory">Category</label></h3>
                <div>
                    <select class="ajax CategoriesSelect ui-Select Module" name="category">
    

    
        <option value="other">
        What kind of board is it?
            </option>
        <option value="animals">
        Animals
            </option>
        <option value="architecture">
        Architecture
            </option>
        <option value="art">
        Art
            </option>
        <option value="cars_motorcycles">
        Cars &amp; Motorcycles
            </option>
        <option value="celebrities">
        Celebrities
            </option>
        <option value="design">
        Design
            </option>
        <option value="diy_crafts">
        DIY &amp; Crafts
            </option>
        <option value="education">
        Education
            </option>
        <option value="film_music_books">
        Film, Music &amp; Books
            </option>
        <option value="food_drink">
        Food &amp; Drink
            </option>
        <option value="gardening">
        Gardening
            </option>
        <option value="geek">
        Geek
            </option>
        <option value="hair_beauty">
        Hair &amp; Beauty
            </option>
        <option value="health_fitness">
        Health &amp; Fitness
            </option>
        <option value="history">
        History
            </option>
        <option value="holidays_events">
        Holidays &amp; Events
            </option>
        <option value="home_decor">
        Home Decor
            </option>
        <option value="humor">
        Humor
            </option>
        <option value="illustrations_posters">
        Illustrations &amp; Posters
            </option>
        <option value="kids">
        Kids
            </option>
        <option value="mens_fashion">
        Men's Fashion
            </option>
        <option value="outdoors">
        Outdoors
            </option>
        <option value="photography">
        Photography
            </option>
        <option value="products">
        Products
            </option>
        <option value="quotes">
        Quotes
            </option>
        <option value="science_nature">
        Science &amp; Nature
            </option>
        <option value="sports">
        Sports
            </option>
        <option value="tattoos">
        Tattoos
            </option>
        <option value="technology">
        Technology
            </option>
        <option value="travel">
        Travel
            </option>
        <option value="weddings">
        Weddings
            </option>
        <option value="womens_fashion">
        Women's Fashion
            </option>
        <option value="other">
        Other
            </option>
</select>
               
                </li>
              </ul>

        <div class="formFooter">
        <div class="formFooterButtons">
            <button type="button" class="rounded Button hasText Module ajax btn cancelButton">    


<span class="buttonText">Cancel</span>
        </button>

            <button type="submit" class="hasText rounded saveBoardButton Button primary Module ajax btn">    


<span class="buttonText">Create Board</span>
        </button>
        </div>
    </div>
</form>
</form>
</body>
</html>