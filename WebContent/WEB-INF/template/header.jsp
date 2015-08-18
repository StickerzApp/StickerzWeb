<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="header">
	<div class="wrap">
		
		<div class="logo">
<!-- 			<a href="index.html"><img src="web/images/logo.png" title="pinbal" /></a> -->
		</div>
		
		<c:if test="${empty sessaoUsuario}" >
			<div class="menuOffline">
					<a><span>AJUDA</span></a>
					<a><span>CONTATO</span></a>
					<a><img src="web/images/facebook32.png" title="user-name" width="18" height="18" /></a>
					<a><img src="web/images/instagram32.png" title="user-name"  width="18" height="18"  /></a>
					<a><img src="web/images/twitter32.png" title="user-name"  width="18" height="18"  /></a>
			</div>
		</c:if>
		
		<c:if test="${not empty sessaoUsuario}" >
			<div id="userinfo" class="userinfo">
					<a href="perfil?codigoUsuario=${sessaoUsuario.codigoUsuario}">
						<img src="web/images/user-pic.png" title="user-name" />
					</a>
					<div id="submenu">
						<a href="meusDados"><i class="fa fa-user" style="padding-right: 10px;"></i>Meus dados</a><br>
						<a><i class="fa fa-cog" style="padding-right: 10px;"></i>Configurações</a><br>
						<a href="logoff"><i class="fa fa-sign-out" style="padding-right: 10px;"></i>Sair</a>
					</div>
			</div>
			
			<div class="clear"> </div>
		</c:if>
	</div>
</div>

<!-- 	<div class="top-searchbar"> -->
<!-- 					<form> -->
<!-- 						<input type="text"  placeholder="Pesquisar usuário"/><input type="submit" value="" /> -->
<!-- 					</form> -->
<!-- 	</div> -->

