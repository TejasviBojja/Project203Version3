<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.ViewTileView" -->
﻿<html>
<head>
<body>
<form id="Tile_view" action=" " method="post">
<#list tile as t>
<div id="container">
    
    <span style="float: left;">
       <h4>${t.url}</h4>
       <h4>${t.description}</h4>
    </span>
</div>
</#list>
</form>