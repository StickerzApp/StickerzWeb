<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<t:insertDefinition attribute=".template.default">
	<t:putAttribute attribute="middle" >
		<div class="palco">
		<div class="logmod__container">
		      <ul class="logmod__tabs">
		        <li data-tabtar="lgm-2"><a href="#">Já tenho cadastro</a></li>
		        <li data-tabtar="lgm-1"><a href="#">Quero me cadastrar</a></li>
		      </ul>
		      <div class="logmod__tab-wrapper">
		      <div class="logmod__tab lgm-1">
		        <div class="logmod__heading">
		          <span class="logmod__heading-subtitle">Informe seus dados <strong>para criar uma conta</strong></span>
		        </div>
		        <div class="logmod__form">
		          <form accept-charset="utf-8" action="cadastro" class="simform">
		            <div class="sminputs">
		              <div class="input full">
		                <label class="string optional" for="user-name">Email*</label>
		                <input class="string optional" maxlength="255" id="user-email" name="emailUsuario" placeholder="Email" type="email" size="50" />
		              </div>
		            </div>
		            <div class="sminputs">
		              <div class="input string optional">
		                <label class="string optional" for="user-pw">Senha *</label>
		                <input class="string optional" maxlength="255" id="user-pw" placeholder="senha" name="senha" type="password" size="50" />
		              </div>
		              <div class="input string optional">
		                <label class="string optional" for="user-pw-repeat">Repita a senha *</label>
		                <input class="string optional" maxlength="255" id="user-pw-repeat" placeholder="senha" name="confirmacaoSenha" type="password" size="50" />
		              </div>
		            </div>
		            <div class="simform__actions">
		              <input class="submit" name="commit" type="submit" value="Criar conta" />
		              <span class="simform__actions-sidetext">Criando uma conta você está aceitando nossos <a class="special" href="#" target="_blank" role="link">Termos de uso e privacidade</a></span>
		            </div> 
		          </form>
		        </div> 
<!-- 		        <div class="logmod__alter"> -->
<!-- 		          <div class="logmod__alter-container"> -->
<!-- 		            <a href="#" class="connect facebook"> -->
<!-- 		              <div class="connect__icon"> -->
<!-- 		                <i class="fa fa-facebook"></i> -->
<!-- 		              </div> -->
<!-- 		              <div class="connect__context"> -->
<%-- 		                <span>Criar conta à partir do <strong>Facebook</strong></span> --%>
<!-- 		              </div> -->
<!-- 		            </a> -->
		              
<!-- 		            <a href="#" class="connect googleplus"> -->
<!-- 		              <div class="connect__icon"> -->
<!-- 		                <i class="fa fa-google-plus"></i> -->
<!-- 		              </div> -->
<!-- 		              <div class="connect__context"> -->
<%-- 		                <span>Criar conta à partir <strong>Google+</strong></span> --%>
<!-- 		              </div> -->
<!-- 		            </a> -->
<!-- 		          </div> -->
<!-- 		        </div> -->
		      </div>
		      <div class="logmod__tab lgm-2">
		        <div class="logmod__heading">
		          <span class="logmod__heading-subtitle">Informe seu email e senha <strong>para entrar</strong></span>
		        </div> 
		        <div class="logmod__form">
		          <form accept-charset="utf-8" action="login" class="simform">
		            <div class="sminputs">
		              <div class="input full">
		                <label class="string optional" for="user-name">Email*</label>
		                <input class="string optional" maxlength="255" id="user-email" placeholder="Email" name="email" type="email" size="50" />
		              </div>
		            </div>
		            <div class="sminputs">
		              <div class="input full">
		                <label class="string optional" for="user-pw">Senha *</label>
		                <input class="string optional" maxlength="255" id="user-pw" placeholder="senha" name="senha" type="password" size="50" />
		                						<span class="hide-password">Exibir</span>
		              </div>
		            </div>
		            <div class="simform__actions">
		              <input class="submit" name="commit" type="submit" value="Entrar" />
		              <span class="simform__actions-sidetext"><a class="special" role="link" href="#">Esqueceu sua senha? Clique aqui</a></span>
		            </div> 
		          </form>
		        </div> 
<!-- 		        <div class="logmod__alter"> -->
<!-- 		          <div class="logmod__alter-container"> -->
<!-- 		            <a href="#" class="connect facebook"> -->
<!-- 		              <div class="connect__icon"> -->
<!-- 		                <i class="fa fa-facebook"></i> -->
<!-- 		              </div> -->
<!-- 		              <div class="connect__context"> -->
<%-- 		                <span>Entrar com <strong>Facebook</strong></span> --%>
<!-- 		              </div> -->
<!-- 		            </a> -->
<!-- 		            <a href="#" class="connect googleplus"> -->
<!-- 		              <div class="connect__icon"> -->
<!-- 		                <i class="fa fa-google-plus"></i> -->
<!-- 		              </div> -->
<!-- 		              <div class="connect__context"> -->
<%-- 		                <span>Entrar com <strong>Google+</strong></span> --%>
<!-- 		              </div> -->
<!-- 		            </a> -->
<!-- 		          </div> -->
<!-- 		        </div> -->
		          </div>
		      </div>
		    </div>
	 	</div>
	</t:putAttribute>
</t:insertDefinition>







