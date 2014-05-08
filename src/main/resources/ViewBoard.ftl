<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.ViewBoardView" -->
﻿<html>
<head>
<meta charset="utf8"/>

<link rel="stylesheet" href"style.css" type="text/css" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<style>

.button
{
font-family: Verdana, Arial, Helvetica, sans-serif; 
font-size: 12px; 
font-weight: bold; 
color: #003366
border: #00ffff
background: white;
border-style:dashed;
border-color:black;
}

</style>
<script>

function showTiles()
{
var boardname;
boardname= document.getElementById('boardnames').value
alert(boardname);
window.location.href="ViewBoard?boardName="+boardname;
}


</script>
<body>
<form id="Board_view" action=" " method="post">

<div id="container">
    <#list board as b>
    <#list email as e>
    <span style="float: left;">
        <a href="http://localhost:8080/MyTacks/ViewTile?boardName=${b.name}&email=${e}"> ${b.name} </a>
    </span>
    </div>
    </#list>
    </#list>
    </form>
    
