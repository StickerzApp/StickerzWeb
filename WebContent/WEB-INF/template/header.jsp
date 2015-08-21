<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!-- Start Header Section --> 
        <div class="hidden-header"></div>
        <header class="clearfix">
            
            <!-- Start Top Bar -->
            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-md-1">
                            <!-- Start Social Links -->
                            <ul class="social-list" >
                                <li>
                                    <a class="google itl-tooltip" data-placement="bottom" title="Algum problema ?" href="#"><i class="fa fa-life-bouy"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-11">
                            <!-- Start Social Links -->
                            <ul class="social-list">
                                <li>
                                    <a class="facebook itl-tooltip" data-placement="bottom" title="Facebook" href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a class="twitter itl-tooltip" data-placement="bottom" title="Twitter" href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a class="google itl-tooltip" data-placement="bottom" title="Google Plus" href="#"><i class="fa fa-google-plus"></i></a>
                                </li>
                                <li>
                                    <a class="instgram itl-tooltip" data-placement="bottom" title="Instagram" href="#"><i class="fa fa-instagram"></i></a>
                                </li>
                                <li>
                                    <a class="instgram itl-tooltip" data-placement="bottom" title="Instagram" href="#"><i class="fa fa-youtube"></i></a>
                                </li>
                            </ul>
                            <!-- End Social Links -->
                        </div><!-- .col-md-12 -->
                    </div><!-- .row -->
                </div><!-- .container -->
            </div><!-- .top-bar -->
            <!-- End Top Bar -->
            
            
            <!-- Start  Logo & Naviagtion  -->
            <div class="navbar navbar-default navbar-top">
                <div class="container">
                    <div class="navbar-header">
                        <!-- Stat Toggle Nav Link For Mobiles -->
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <i class="fa fa-bars"></i>
                        </button>
                        <!-- End Toggle Nav Link For Mobiles -->
                        <a class="navbar-brand" href="index">
                            <img alt="" src="web/images/margo.png">
                        </a>
                    </div>
                    <div class="navbar-collapse collapse">
                    	<c:choose>
                    		<c:when test="${empty sessaoUsuario}">
			                        <!-- Start login form -->
			                        <div class="login-side">
			                            <a href="#" class="show-login"><i class="fa fa-user"></i></a>
			                            <div class="login-form">
			                                <s:form autocomplete="off" role="search" method="post" action="login" id="loginform">
			                                    <input type="text" value="" name="email" id="email" placeholder="Email">
			                                    <input type="password" value="" name="senha" id="senha" placeholder="Senha">
			                                    <br/>
			                                    <br/>
			                                   	<input type="checkbox" checked="checked"><span>Lembrar     </span>
			                                   	<a href="#">Recuperar senha</a>
			                                   	<br/>
			                                   	<br/>
			                                   	<a href="#" class="main-button blue">Facebook</a>
			                                   	<a href="javascript:document.loginform.submit();"  class="main-button green" >Entrar</a>
			                                </s:form>
			                            </div>
			                        </div>
			                        <!-- End login form -->
                    		</c:when>
                    		<c:otherwise>
                    			<div class="login-side">
			                           ${sessaoUsuario.descEmail}  <a href="#" class="show-login"><i class="fa fa-user"></i></a>
	                            </div>
                    		</c:otherwise>
                    			
                    	</c:choose>
                    
                    
                    </div>
                </div>
            </div>
            <!-- End Header Logo & Naviagtion -->
            
        </header> 
        <!-- End Header Section -->
        