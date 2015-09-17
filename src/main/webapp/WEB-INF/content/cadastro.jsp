<%@ page contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<t:insertDefinition name=".template.default">
	<t:putAttribute name="middle">
		<div class="section full-width-portfolio"
			style="border-top: 0; border-bottom: 0; background: #fff;">

			<div class="container">
				<div class="row">

					<div class="col-md-8">

						<!-- Classic Heading -->
						<h4 class="classic-title">
							<span>Cadastro</span>
						</h4>

						<!-- Start Contact Form -->
						<s:form role="form" action="cadastrar" class="contact-form" id="contact-form" name="contact-form"
							method="post">
							<div class="form-group">
								<div class="controls">
									<input type="text" placeholder="Nome" name="nome" id="nomeCadastro">
										<i id="erroNome" class="fa fa-exclamation erroIcon80"  style="display: none;"></i>
								</div>
							</div>
							<div class="form-group">
								<div class="controls">
									<input type="email" id="emailCadastro" class="email" placeholder="Email"
										name="email" onkeyup="validaEmail();">
										<i id="erroEmail" class="fa fa-exclamation erroIcon80"  style="display: none;"></i>
								</div>
								<div  class="dicacampo" id="dicaemail" style="display: none;">O email informado é inválido</div>
							</div>
							<div class="form-group">
								<div class="controls">
									<input type="password" class="password" placeholder="Senha"
										maxlength="8" id="senhaCadastro" name="senha" onkeyup="validaSenhaCadastro();">
										<i id="erroSenha" class="fa fa-exclamation erroIcon30"  style="display: none;"></i>
								</div>
								<div  class="dicacampo" id="dicasenha" style="display: none;">A senha deve conter no mínimo 6 caracteres e no máximo 8.</div>
							</div>
							<div class="form-group">
								<div class="controls">
									<input type="password" class="password" placeholder="Confirme sua senha"
										name="confirmacaoSenha" id="confirmaSenhaCadastro" maxlength="8" onkeyup="validaConfirmacao();">
										<i id="erroConfirmaSenha" class="fa fa-exclamation erroIcon30"  style="display: none;"></i>
								</div>
								<div  class="dicacampo" id="dicaconfirmacao" style="display: none;">A confirmação de senha deve igual à senha digitada.</div>
							</div>
							
							<button type="submit" id="submit" class="btn-system btn-large" >Cadastrar</button>
							<div id="success" style="color: #34495e;"></div>
						</s:form>
						<!-- End Contact Form -->

					</div>

					<div class="col-md-4">

						<!-- Classic Heading -->
						<h4 class="classic-title">
							<span>Facebook</span>
						</h4>

						<!-- Some Info -->
						<p>Você pode acessar o <strong>Stickerz</strong> com sua conta do <strong>facebook</strong>, assim você não precisa gravar mais de uma senha e aproveita todos os seus amigos para trocar seus stickerz.</p>

						<!-- Divider -->
						<div class="hr1" style="margin-bottom: 10px;"></div>

						<!-- Info - Icons List -->
						<ul class="icons-list">
							<li>
								<a href="#" class="main-button blue">Facebook</a>
							</li>
						</ul>

						<!-- Divider -->
						<div class="hr1" style="margin-bottom: 15px;"></div>

						<!-- Classic Heading -->
						<h4 class="classic-title">
							<span>Dados informados</span>
						</h4>

						<!-- Info - List -->
						<ul class="list-unstyled">
							<li>- O email informado deverá ser valido para confirmação de cadastro</li>
							<li>- A senha deve ser formada por <strong>6 a 8 caracteres.</strong> </li>
						</ul>

					</div>

				</div>
			</div>
		</div>
		<!-- End content -->
	</t:putAttribute>
	<t:putAttribute name="footer" value="" />
</t:insertDefinition>







