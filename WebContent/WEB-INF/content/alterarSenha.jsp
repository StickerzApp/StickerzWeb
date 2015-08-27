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
							<span>Alterar de senha</span>
						</h4>

						<!-- Start Contact Form -->
						<s:form role="form" action="alterarSenhaRecuperacao" class="contact-form" id="contact-form" name="contact-form"
							method="post" >
							
							<input type="hidden" name="codigoAlteracaoSenha" value="${codigoAlteracaoSenha}">
							<div class="form-group">
								<div class="controls">
									<input type="email" id="emailCadastro" class="email" value="${email}"
										name="email" readonly="readonly">
								</div>
							</div>
							
							<div class="form-group">
								<div class="controls">
									<input type="password" class="password" placeholder="Senha"
										maxlength="8" id="senhaCadastro" name="senha" onkeyup="validaSenhaCadastro();">
										<i id="erroSenha" class="fa fa-exclamation erroIcon30"  style="display: none;"></i>
								</div>
								<div  class="dicacampo" id="dicasenha" style="display: none;">A senha deve conter no m�nimo 6 caracteres e no m�ximo 8.</div>
							</div>
							<div class="form-group">
								<div class="controls">
									<input type="password" class="password" placeholder="Confirme sua senha"
										name="confirmacaoSenha" id="confirmaSenhaCadastro" maxlength="8" onkeyup="validaConfirmacao();">
										<i id="erroConfirmaSenha" class="fa fa-exclamation erroIcon30"  style="display: none;"></i>
								</div>
								<div  class="dicacampo" id="dicaconfirmacao" style="display: none;">A confirma��o de senha deve igual � senha digitada.</div>
							</div>
							<button type="submit" id="submit" class="btn-system btn-large" >Alterar</button>
							<div id="success" style="color: #34495e;"></div>
						</s:form>
						<!-- End Contact Form -->

					</div>

					<div class="col-md-4">

						<!-- Classic Heading -->
						<h4 class="classic-title">
							<span>Altera��o de senha</span>
						</h4>

						<!-- Some Info -->
						<p>Voc� receber� um link em seu email cadastrado para confirmar a <strong>recupera��o de senha.</strong></p>
						<!-- Divider -->
						<div class="hr1" style="margin-bottom: 10px;"></div>
						<p>Verifique sua pasta de lixo eletr�nico, e caso n�o receba o email de recupera��o de senha entre em contato conosco atrav�s do email <strong>suporte@stickerz.com.br.</strong></p>

					</div>

				</div>
			</div>
		</div>
		<!-- End content -->
	</t:putAttribute>
	<t:putAttribute name="footer" value="" />
</t:insertDefinition>







