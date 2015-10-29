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
							<span>Quero ser parceiro</span>
						</h4>

						<!-- Start Contact Form -->
						<s:form role="form" action="registrarInteresseParceiro" class="contact-form" id="contact-form" name="contact-form"
							method="post">
							<div class="form-group">
								<div class="controls">
									<input type="text" placeholder="Nome/Razão Social" name="nomeRazaoSocial" id="nomeRazaoSocial">
										<i id="erroNome" class="fa fa-exclamation erroIcon80"  style="display: none;"></i>
								</div>
							</div>
							<div class="form-group">
								<div class="controls">
									<input type="email" id="emailCadastro" class="email" placeholder="Email"
										name="emailContato" onkeyup="validaEmail();">
										<i id="erroEmail" class="fa fa-exclamation erroIcon80"  style="display: none;"></i>
								</div>
								<div  class="dicacampo" id="dicaemail" style="display: none;">O email informado é inválido</div>
							</div>
							<div class="form-group">
								<div class="controls">
									<input type="text" placeholder="Telefone" name="telefoneContato" id="telefoneContato">
										<i id="erroNome" class="fa fa-exclamation erroIcon80"  style="display: none;"></i>
								</div>
							</div>
							<div class="form-group">
								<div class="controls">
									<input type="text" placeholder="Ramo de atividade" name="ramoAtividade" id="ramoAtividade">
										<i id="erroNome" class="fa fa-exclamation erroIcon80"  style="display: none;"></i>
								</div>
							</div>
							<div class="form-group">
								<div class="controls">
									<input type="text" placeholder="Mensagem" name="mensagem" id="mensagem">
										<i id="erroNome" class="fa fa-exclamation erroIcon80"  style="display: none;"></i>
								</div>
							</div>
							
							<button type="submit" id="submit" class="btn-system btn-large" >Enviar</button>
							<div id="success" style="color: #34495e;"></div>
						</s:form>
						<!-- End Contact Form -->

					</div>

					<div class="col-md-4">

<!-- 						Classic Heading -->
<!-- 						<h4 class="classic-title"> -->
<%-- 							<span>Facebook</span> --%>
<!-- 						</h4> -->

<!-- 						Some Info -->
<%-- 						<p>Você pode acessar o <strong>Stickerz</strong> com sua conta do <strong>facebook</strong>, assim você não precisa gravar mais de uma senha e aproveita todos os seus amigos para trocar seus stickerz.</p> --%>

<!-- 						Divider -->
<!-- 						<div class="hr1" style="margin-bottom: 10px;"></div> -->

<!-- 						Info - Icons List -->
<!-- 						<ul class="icons-list"> -->
<!-- 							<li> -->
<!-- 								<a href="#" class="main-button blue">Facebook</a> -->
<!-- 							</li> -->
<!-- 						</ul> -->

<!-- 						Divider -->
<!-- 						<div class="hr1" style="margin-bottom: 15px;"></div> -->

<!-- 						Classic Heading -->
<!-- 						<h4 class="classic-title"> -->
<%-- 							<span>Dados informados</span> --%>
<!-- 						</h4> -->

<!-- 						Info - List -->
<!-- 						<ul class="list-unstyled"> -->
<!-- 							<li>- O email informado deverá ser valido para confirmação de cadastro</li> -->
<%-- 							<li>- A senha deve ser formada por <strong>6 a 8 caracteres.</strong> </li> --%>
<!-- 						</ul> -->

					</div>

				</div>
			</div>
		</div>
		<!-- End content -->
	</t:putAttribute>
	<t:putAttribute name="footer" value="" />
</t:insertDefinition>







