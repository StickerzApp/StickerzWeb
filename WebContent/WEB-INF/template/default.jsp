<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC
	"-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt_BR" lang="pt_BR">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<meta http-equiv="Content-type" content="text/html; charset=ISO-8859-1" />
		<meta http-equiv="Cache-control" content="no-cache, no-store" />
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Expires" content="-1" />

		<title>Sapateando</title>
		<link rel="shortcut icon" type="image/x-icon" href="<c:url value='web/images/fav-icon.png' />" />
		<link rel="icon" href="<c:url value='web/images/fav-icon.png' />" type="image/vnd.microsoft.icon"  />

		<!-- Css -->
		<link href="<c:url value='web/css/style.css' />" rel="stylesheet" type="text/css" />
		<link href="<c:url value='web/css/normalize.css' />" rel="stylesheet" type="text/css" />
		<link href="<c:url value='web/css/font-awesome.css' />" rel="stylesheet" type="text/css" />
		<link href="<c:url value='web/css/form.css' />" rel="stylesheet" type="text/css" />
		
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'/>
		
		<!----script---->
		<script src="<c:url value='web/js/jquery.min.js' />"></script>
        <script src="<c:url value='web/js/index.js' />"></script>
		
		

		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<t:insertAttribute name="htmlHeader" />
	</head>
	
	<body>
		<t:insertAttribute name="header" />
		<div class="content">
			<div class="wrap">
				 <div id="main" role="main">
					<t:insertAttribute name="middle"/>
				 </div>
			 </div>
			<div style="clear: both;"></div>
		 </div>

		<t:insertAttribute name="footer" />	
	</body>
</html>