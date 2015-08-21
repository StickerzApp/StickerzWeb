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
	  <!-- Modal -->
	  <div class="modal fade" id="myModal" role="dialog">
	    <div class="modal-dialog modal-lg">
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">O que aconteceu ?</h4>
	        </div>
	        <div class="modal-body">
	          <p>Voc� esqueceu seus dados de acesso ou n�o tem cadastro ?.</p>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
	      </div>
	    </div>
	  </div>
		<div id="container">
			<t:insertAttribute name="header" />
			<t:insertAttribute name="middle"/>
			<t:insertAttribute name="footer" />	
		</div>
	
	</body>
</html>