<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="en">
	<head>
		  <!-- Basic -->
    <title>Stickerz</title>

    <!-- Define Charset -->
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Page Description and Author -->
    <meta name="description" content="Margo - Responsive HTML5 Template">
    <meta name="author" content="iThemesLab">

    <!-- Bootstrap CSS  -->
    <link rel="stylesheet" href="web/asset/css/bootstrap.min.css" type="text/css" media="screen">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="web/css/font-awesome.min.css" type="text/css" media="screen">

    <!-- Margo CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="web/css/style.css" media="screen">

    <!-- Responsive CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="web/css/responsive.css" media="screen">

    <!-- Css3 Transitions Styles  -->
    <link rel="stylesheet" type="text/css" href="web/css/animate.css" media="screen">

    <!-- Color CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="web/css/colors/red.css" title="red" media="screen" />
    <link rel="stylesheet" type="text/css" href="web/css/colors/jade.css" title="jade" media="screen" />
    <link rel="stylesheet" type="text/css" href="web/css/colors/green.css" title="green" media="screen" />
    <link rel="stylesheet" type="text/css" href="web/css/colors/blue.css" title="blue" media="screen" />
    <link rel="stylesheet" type="text/css" href="web/css/colors/beige.css" title="beige" media="screen" />
    <link rel="stylesheet" type="text/css" href="web/css/colors/cyan.css" title="cyan" media="screen" />
    <link rel="stylesheet" type="text/css" href="web/css/colors/orange.css" title="orange" media="screen" />
    <link rel="stylesheet" type="text/css" href="web/css/colors/peach.css" title="peach" media="screen" />
    <link rel="stylesheet" type="text/css" href="web/css/colors/pink.css" title="pink" media="screen" />
    <link rel="stylesheet" type="text/css" href="web/css/colors/purple.css" title="purple" media="screen" />
    <link rel="stylesheet" type="text/css" href="web/css/colors/sky-blue.css" title="sky-blue" media="screen" />
    <link rel="stylesheet" type="text/css" href="web/css/colors/yellow.css" title="yellow" media="screen" />


    <!-- Margo JS  -->
    <script type="text/javascript" src="web/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="web/js/jquery.migrate.js"></script>
    <script type="text/javascript" src="web/js/modernizrr.js"></script>
    <script type="text/javascript" src="web/asset/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="web/js/jquery.fitvids.js"></script>
    <script type="text/javascript" src="web/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="web/js/nivo-lightbox.min.js"></script>
    <script type="text/javascript" src="web/js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="web/js/jquery.appear.js"></script>
    <script type="text/javascript" src="web/js/count-to.js"></script>
    <script type="text/javascript" src="web/js/jquery.textillate.js"></script>
    <script type="text/javascript" src="web/js/jquery.lettering.js"></script>
    <script type="text/javascript" src="web/js/jquery.easypiechart.min.js"></script>
    <script type="text/javascript" src="web/js/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="web/js/jquery.parallax.js"></script>
    <script type="text/javascript" src="web/js/mediaelement-and-player.js"></script>
    <script type="text/javascript" src="web/js/script.js"></script>

    <!--[if IE 8]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
		<t:insertAttribute name="htmlHeader" />
	</head>
	
	<body>
		<div id="container">
			<t:insertAttribute name="header" />
			<t:insertAttribute name="middle"/>
			<t:insertAttribute name="footer" />	
		</div>
<!-- 			<!-- Go To Top Link --> -->
<!-- 	    <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a> -->
	
<!-- 	    <div id="loader"> -->
<!-- 	        <div class="spinner"> -->
<!-- 	            <div class="dot1"></div> -->
<!-- 	            <div class="dot2"></div> -->
<!-- 	        </div> -->
<!-- 	    </div> -->
	
<!-- 	    Style Switcher -->
<!-- 	    <div class="switcher-box"> -->
<!-- 	        <a href="#" class="open-switcher show-switcher"><i class="fa fa-cog fa-2x"></i></a> -->
<!-- 	        <h4>Style Switcher</h4> -->
<%-- 	        <span>12 Predefined Color Skins</span> --%>
<!-- 	        <ul class="colors-list"> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('blue'); return false;" title="Blue" class="blue"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('sky-blue'); return false;" title="Sky Blue" class="sky-blue"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('cyan'); return false;" title="Cyan" class="cyan"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('jade'); return false;" title="Jade" class="jade"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('green'); return false;" title="Green" class="green"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('purple'); return false;" title="Purple" class="purple"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('pink'); return false;" title="Pink" class="pink"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('red'); return false;" title="Red" class="red"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('orange'); return false;" title="Orange" class="orange"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('yellow'); return false;" title="Yellow" class="yellow"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('peach'); return false;" title="Peach" class="peach"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a onClick="setActiveStyleSheet('beige'); return false;" title="Biege" class="beige"></a> -->
<!-- 	            </li> -->
<!-- 	        </ul> -->
<%-- 	        <span>Top Bar Color</span> --%>
<%-- 	        <select id="topbar-style" class="topbar-style"> --%>
<!-- 	            <option value="1">Light (Default)</option> -->
<!-- 	            <option value="2">Dark</option> -->
<!-- 	            <option value="3">Color</option> -->
<%-- 	        </select> --%>
<%-- 	        <span>Layout Style</span> --%>
<%-- 	        <select id="layout-style" class="layout-style"> --%>
<!-- 	            <option value="1">Wide</option> -->
<!-- 	            <option value="2">Boxed</option> -->
<%-- 	        </select> --%>
<%-- 	        <span>Patterns for Boxed Version</span> --%>
<!-- 	        <ul class="bg-list"> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg1"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg2"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg3"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg4"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg5"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg6"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg7"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg8"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg9"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg10"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg11"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg12"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg13"></a> -->
<!-- 	            </li> -->
<!-- 	            <li> -->
<!-- 	                <a href="#" class="bg14"></a> -->
<!-- 	            </li> -->
<!-- 	        </ul> -->
<!-- 	    </div> -->
	
	</body>
</html>