<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!-- Start Header Section --> 
        <div class="hidden-header"></div>
        <header class="clearfix">
        	<s:if test="hasActionErrors()">
           		<script>
				   $('#modalerro').modal('show');
           		</script>
			</s:if>
        	<s:if test="hasActionMessages()">
           		<script>
				   $('#modalinfo').modal('show');
           		</script>
			</s:if>
			
			
            
            <!-- Start Top Bar -->
            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
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
	                            <!-- Help Links -->
                                <li>
                                    <a data-placement="bottom" href="#"><i> </i></a>
                                </li>
                                <li>
                                    <a class="google itl-tooltip" data-placement="bottom" title="Ajuda" href="#"><i class="fa fa-life-bouy"></i></a>
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
		                    			<a href="cadastro" class="main-button green">Quero me cadastrar</a>
			                            <a href="#" class="show-login"><i class="fa fa-user"></i></a>
			                            <div class="login-form">
			                                <s:form autocomplete="off" role="search" method="post" action="login" id="loginform">
			                                	<div class="controls">
				                                    <input type="text" value="" name="email" id="email" placeholder="Email">
				                                    <i id="emailIcon" class="fa fa-user inputIcon"></i>
			                                	</div>
			                                	<div class="controls">
				                                    <input type="password" value="" name="senha" id="senha" placeholder="Senha">
				                                    <i id="passIcon" class="fa fa-key inputIcon"></i>
			                                	</div>
			                                    <br/>
			                                    <br/>
			                                    
			                                    
			                                   	<input type="checkbox" checked="checked"><span>Lembrar     </span>
			                                   	<a href="recuperacaoSenha">Recuperar senha</a>
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
                    			<div class="login-side user-info">
			                          <div> ${sessaoUsuario.descNome}</div>  <a href="#" class="show-login "><i class="fa fa-user"><i class="fa fa-plus-square imin"></i></i></a>
			                          <br/><div><a href="#">Perfil</a></div><div><a href="#">Notificações</a></div><div><a href="logoff">Sair</a></div>
	                            </div>
                    		</c:otherwise>
                    			
                    	</c:choose>
                    
                    
                    </div>
                </div>
            </div>
            <!-- End Header Logo & Naviagtion -->
            
        </header> 
        <!-- End Header Section -->
        