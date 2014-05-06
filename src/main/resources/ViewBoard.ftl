<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.ViewBoardView" -->
﻿<html>
<head>
<body>
<form id="Board_view" action=" " method="post">
<#list tile as t>
<div id="container">
    
    <span style="float: left;">
       <image src=${t.url}>
    </span>
    </div>
    </#list>
    </form>
    
