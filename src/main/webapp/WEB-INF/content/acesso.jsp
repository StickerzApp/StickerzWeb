<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<t:insertDefinition name=".template.default">
	<t:putAttribute name="middle" >
       
        <div class="section full-width-portfolio" style="border-top:0; border-bottom:0; background:#fff;">
<!-- 			Início do slider de publicidade -->
                <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden; visibility: hidden;">
			        <!-- Loading Screen -->
			        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
			            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
			            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
			        </div>
			        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
			            <div data-p="225.00" style="display: none;">
			                <img data-u="image" src="web/images/banner1.jpg" />
			            </div>
			            <div data-p="225.00" style="display: none;">
			                <img data-u="image" src="web/images/banner2.jpg" />
			            </div>
			            <div data-p="225.00" style="display: none;">
			                <img data-u="image" src="web/images/banner3.jpg" />
			            </div>
			        </div>
			        
<!--		        Navegador inferior do slider -->
			        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:6px;" data-autocenter="1">
			            <div data-u="prototype" style="width:16px;height:16px;"></div>
			        </div>
			        
<!-- 			    Navegador lateral de setas -->
			        <span data-u="arrowleft" class="jssora22l" style="top:123px;left:12px;width:40px;height:58px;" data-autocenter="2"></span>
			        <span data-u="arrowright" class="jssora22r" style="top:123px;right:12px;width:40px;height:58px;" data-autocenter="2"></span>
			    </div>
        
<!--        Início do container geral -->
            <div class="container">
				
				
				<s:if test="hasActionErrors()">
            		<script>
					   $('#myModal').modal('show');
            		</script>
				</s:if>
				
			    
	<!--	 	Como funciona -->
		        <div class="section full-width-portfolio" style="border-top:0; border-bottom:0; background:#fff;">
		
	<!-- 				Título seção -->
		                <div class="big-title text-center" data-animation="fadeInDown" data-animation-delay="01">
		                    <h1>Não conhece o <strong>stickerz</strong> ? Saiba como funciona</h1>
		                </div>
		                
	<!-- 				Subtítulo seção	 -->
		                <p class="text-center">Descubra como funciona <strong>o mais novo e divertido programa de recompensas</strong> do mercado.</p>
		
		
	<!--				Passo a passo -->
		                <ul id="portfolio-list" data-animated="fadeIn">
	<!--                		Passo 1 - Compra -->
			                    <li>
			                        <img src="web/images/passo1.png" alt="" />
			                        <div class="portfolio-item-content">
			                            <span class="header">${nomeRede}</span>
				                        <a href="#">Tabela de stickerz por estabelecimento</a>
			                        </div>
			                        <br/>
			                        <div style="text-align: justify;margin: 4px 4px 4px 4px;">Realize uma compra em um dos estabelecimentos das redes participantes e ganhe um ou mais stickerz.<br/> </div>
			                    </li>
	<!--                		Passo 2 - Registre seus stickerz-->
			                    <li>
			                        <img src="web/images/passo2.png" alt="" />
			                        <div class="portfolio-item-content">
			                            <span class="header">${nomeRede}</span>
			                            <p class="body">descrição do passo 2</p>
			                        </div>
			                        <br/>
			                        <div style="text-align: justify;margin: 4px 4px 4px 4px;">Acesse o site e registre o código presente no cupom de sua compra.É necessário estar cadastrado no site.<br/> </div>
			                    </li>
	<!--                		Passo 3 - Colecione-->
			                    <li>
			                        <img src="web/images/passo3.png" alt="" />
			                        <div class="portfolio-item-content">
			                            <span class="header">${nomeRede}</span>
			                            <p class="body">descrição do passo 3</p>
			                        </div>
			                        <br/>
			                        <div style="text-align: justify;margin: 4px 4px 4px 4px;">Complete os níveis das campanhas para ganhar recompensas.Você poderá trocar com seus amigos seus stickerz repetidos.<br/> </div>
			
			                    </li>
	<!--                		Passo 4 - Resgate-->
			                    <li>
			                        <img src="web/images/passo3.png" alt="" />
			                        <div class="portfolio-item-content">
			                            <span class="header">${nomeRede}</span>
			                            <p class="body">descrição do passo 4</p>
			                        </div>
			                        <br/>
			                        <div style="text-align: justify;margin: 4px 4px 4px 4px;">Vá até o terminal do stickerz no estabelecimento, informe o código do seu cupom e imprima seu vale recompensa para resgatar seu prêmio.</div>
			                    </li>
		                </ul>
	            </div>
        </div>
        
        	            
<!-- 	            Download dos aplicativo -->
		        <div class="section service gray-background" >
		
	<!-- 				Título seção -->
		                <div class="big-title text-center" data-animation="fadeInDown" data-animation-delay="01">
		                    <h1>Faça agora mesmo o <strong>download do aplicativo stickerz</strong> ? É 100% gratuito</h1>
		                </div>
		                
	<!-- 				Subtítulo seção	 -->
		                <p class="text-center">Faça o download do stickerz na <strong>Playstore ou Apple Store </strong> e comece a colecionar stickerz e recompensas.</p>
		                
		                <div class="text-center">
		                	<img src="web/images/aplicativomockup.png"/>
		                	<img src="web/images/applestore.png"/>
		                	<img src="web/images/playstore.png"/>
		                </div>
                </div>
<br/><br/><br/>
	<!-- 	Título da seção -->
	         <div class="big-title text-center" data-animation="fadeInDown" data-animation-delay="01">
	             <h1>Redes participantes</h1>
	         </div>
	
	<!-- 	Lista de redes participantes -->
			<div class="our-clients" >
				<div class="clients-carousel custom-carousel touch-carousel navigation-3" data-appeared-items="5" data-navigation="true">
					<c:forEach items="${listaRedes}" var="rede">
		<!--			Rede participante -->
						<div class="client-item item">
							<a href="abrirCampanha?codigoRede=${rede.idRede}"><img src="web/images/rede${rede.idRede}.png" style="width: 100px;height: 100px;" alt="${rede.nomeRede}"/></a>
						</div>
					</c:forEach>
				</div>
			</div>
        
       <br/><br/><br/><br/>
<!--   Convidar/Sugerir Novos parceiros -->
       <div class="section service orange-background">
	                <div class="big-title text-center" data-animation="fadeInDown" data-animation-delay="01">
	                    <h1 class="white-color">Como assim aqui <strong> não tem stickerz </strong> ? </h1>
	                </div>

                    <div class="col-md-6 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="01">
                        <div class="service-content">
                            <h4 class="white-color">Quer ter stickerz no seu estabelecimento ?</h4><br/>
                            <a href="registroInteresseParceiro" class="main-button darkorange">Seja nosso parceiro</a>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="02">
                        <div class="service-content">
                            <h4 class="white-color">Não tem stickerz no seu lugar favorito ?</h4><br/>
                            <a href="#" class="main-button darkorange">Sugira um estabelecimento</a>
                        </div>
                    </div>
                    <br/>
                      <p class="text-center white-color"><strong>Ajude-nos a expandir o stickerz para vários estabelecimentos, assim você ganha mais e tem stickerz em todos os seus lugares favoritos.</strong></p>
                    
      </div>
	</div>
	</t:putAttribute>
</t:insertDefinition>