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
							<span>Recuperar senha</span>
						</h4>

						<!-- Start Contact Form -->
						<s:form role="form" action="recuperarSenha" class="contact-form" id="contact-form" name="contact-form"
							method="post" >
							<div class="form-group">
								<div class="controls">
									<input type="email" id="emailCadastro" class="email" placeholder="Digite seu email"
										name="email" onkeyup="validaEmail();">
										<i id="erroEmail" class="fa fa-exclamation erroIcon80"  style="display: none;"></i>
								</div>
								<div  class="dicacampo" id="dicaemail" style="display: none;">O email informado é inválido</div>
							</div>
							
							<button type="submit" id="submit" class="btn-system btn-large" >Recuperar senha</button>
							<div id="success" style="color: #34495e;"></div>
						</s:form>
						<!-- End Contact Form -->

					</div>

					<div class="col-md-4">

						<!-- Classic Heading -->
						<h4 class="classic-title">
							<span>Recuperação de senha</span>
						</h4>

						<!-- Some Info -->
						<p>Você receberá um link em seu email cadastrado para confirmar a <strong>recuperação de senha.</strong></p>
						<!-- Divider -->
						<div class="hr1" style="margin-bottom: 10px;"></div>
						<p>Verifique sua pasta de lixo eletrônico, e caso não receba o email de recuperação de senha entre em contato conosco através do email <strong>suporte@stickerz.com.br.</strong></p>

					</div>

				</div>
			</div>
		</div>
		<!-- End content -->
	</t:putAttribute>
	<t:putAttribute name="footer" value="" />
</t:insertDefinition>







