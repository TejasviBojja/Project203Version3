<#-- @ftlvariable name="" type="cmpe203.project.MyTacks.views.ViewBoardView" -->
﻿<html>
<head>
<body>
<form id="Board_view" action=" " method="post">
<#list board as b>
<div id="container">
    
    <span style="float: left;">
       <h4>${b.name}<h4>
    </span>
    </div>
    </#list>
    </form>
    
