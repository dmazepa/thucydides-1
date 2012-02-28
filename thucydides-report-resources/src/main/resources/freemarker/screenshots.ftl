<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
    <style type="text/css">
        <!--
        @import url("css/core.css");
        -->
    </style>
    <link rel="shortcut icon" href="favicon.ico" >
    <link href="css/core.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">a:link {
        text-decoration: none;
    }

    a:visited {
        text-decoration: none;
    }

    a:hover {
        text-decoration: none;
    }

    a:active {
        text-decoration: none;
    }
	#slider {
	    position:relative;
	    width:1000px; /* Change this to your images width */
	    height:800px; /* Change this to your images height */
	    background:url(images/loading.gif) no-repeat 50% 50%;
	}
	#slider img {
	    position:absolute;
	    top:0px;
	    left:0px;
	    display:none;
	}
	#slider a {
	    border:0;
	    display:block;
	}

    </style>

	<!-- CSS Files -->
    <link href="slides/js/global.css" rel="stylesheet" type="text/css"/>

    <script src="scripts/jquery.js"></script>

	<link rel="stylesheet" href="nivo-slider/nivo-slider.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="nivo-slider/themes/default/default.css" type="text/css" media="screen" />

	<script src="nivo-slider/jquery.nivo.slider.pack.js" type="text/javascript"></script>

	<script type="text/javascript">

    function getUrlVars() {
        var vars = {};
        var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
            vars[key] = value;
        });
        return vars;
    }

    var screenshotIndex = getUrlVars()["screenshot"];

	$(window).load(function() {
	    $('#slider').nivoSlider({
            startSlide:screenshotIndex,
            effect:'fade',
			animSpeed:200,
			directionNavHide:false,
			manualAdvance:true,
			keyboardNav:true
		});
	});
	</script>

</head>

<body>
<div id="topheader">
    <div id="topbanner">
        <div id="menu">
            <table border="0">
                <tr>
                    <td><a href="index.html"><img src="images/menu_h.png" width="105" height="28" border="0"/></a></td>
                    <td><a href="features.html"><img src="images/menu_f.png" width="105" height="28" border="0"/></a>
                    </td>
                    <td><a href="stories.html"><img src="images/menu_s.png" width="105" height="28" border="0"/></a>
                    </td>
                </tr>
            </table>
        </div>
        <div id="logo"><a href="index.html"><img src="images/logo.jpg" border="0"/></a></div>
    </div>
</div>

<div class="middlecontent">
    <div id="contenttop">
        <div class="leftbg"></div>
        <div class="middlebg">
            <div style="height:30px;"><span class="bluetext"><a href="index.html">Home</a></span> / <span class="lightgreentext"><a
                    href="features.html" class="lightgreentext">Features</a></span></div>
        </div>
        <div class="rightbg"></div>
    </div>
    <div class="clr"></div>
    <div id="contentbody">
        <a name="screenshots"/>
        <div class="titlebar">
            <div class="tall_leftbgm"></div>
            <div class="tall_middlebgm"><span class="orangetext">Stories - <a href="${testOutcome.reportName}.html">${testOutcome.title}</a></span></div>
            <div class="tall_rightbgm"></div>
        </div>
    </div>
    <div class="clr"></div>


    <div id="beforetable"></div>
    <div id="contenttilttle">

	 <div class="slider-wrapper theme-default">
		<div id="slider">
            <#foreach screenshot in screenshots>
                <img src="${screenshot.filename}" alt="${screenshot.shortErrorMessage}" title="${screenshot.description}" width="${screenshot.width?string.computer}"/>
            </#foreach>
        </div>
	  </div>


    </div>
</div>
<div id="beforefooter"></div>
<div id="bottomfooter"></div>

</body>
</html>
