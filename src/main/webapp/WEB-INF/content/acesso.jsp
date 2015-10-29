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
			                <img data-u="image" src="web/images/red.jpg" />
			            </div>
			            <div data-p="225.00" style="display: none;">
			                <img data-u="image" src="web/images/purple.jpg" />
			            </div>
			            <div data-p="225.00" style="display: none;">
			                <img data-u="image" src="web/images/blue.jpg" />
			            </div>
			        </div>
			        
<!--		        Navegador inferior do slider -->
			        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:6px;" data-autocenter="1">
			            <div data-u="prototype" style="width:16px;height:16px;"></div>
			        </div>
			        
<!-- 			    Navegador lateral de setas -->
			        <span data-u="arrowleft" class="jssora22l" style="top:123px;left:12px;width:40px;height:58px;" data-autocenter="2"></span>
			        <span data-u="arrowright" class="jssora22r" style="top:123px;right:12px;width:40px;height:58px;" data-autocenter="2"></span>
			        <a href="http://www.jssor.com" style="display:none">Jssor Slider</a>
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
                            <a href="#" class="main-button darkorange">Seja nosso parceiro</a>
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
	
        <!-- End Services Section -->
                    
<!--               <div class="section service "> -->
                    
                    
<!-- 	                <div class="big-title text-center" data-animation="fadeInDown" data-animation-delay="01"> -->
<%-- 	                    <h1>Como <strong>funciona ?</strong></h1> --%>
<!-- 	                </div> -->

<!--                     <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="01"> -->
<!--                         <div class="service-icon"> -->
<!--                             <i class="fa fa-download icon-large"></i> -->
<!--                         </div> -->
<!--                         <div class="service-content"> -->
<!--                             <h4>Cadastre-se</h4> -->
<!--                             <p>Cadastre seu CPF e informações de acesso em nosso site</p> -->

<!--                         </div> -->
<!--                     </div> -->

<!--                     <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="02"> -->
<!--                         <div class="service-icon"> -->
<!--                             <i class="fa fa-user icon-large"></i> -->
<!--                         </div> -->
<!--                         <div class="service-content"> -->
<!--                             <h4>Estabelecimentos participantes</h4> -->
<!--                             <p>Vá até um dos milhares de estabelecimentos que usam o Stickerz</p> -->
<!--                         </div> -->
<!--                     </div> -->

<!--                     <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="03"> -->
<!--                         <div class="service-icon"> -->
<!--                             <i class="fa fa-bars icon-large"></i> -->
<!--                         </div> -->
<!--                         <div class="service-content"> -->
<!--                             <h4>Consumo</h4> -->
<!--                             <p>Forneça seu CPF no momento da compra para ganhar stickerz</p> -->
<!--                         </div> -->
<!--                     </div> -->

<!--                     <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="04"> -->
<!--                         <div class="service-icon"> -->
<!--                             <i class="fa fa-cutlery icon-large"></i> -->
<!--                         </div> -->
<!--                         <div class="service-content"> -->
<!--                             <h4>Acúmulo</h4> -->
<!--                             <p>Em uma única compra você pode acumular um ou mais stickerz !</p> -->
<!--                         </div> -->
<!--                     </div> -->

<!--                     <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="05"> -->
<!--                         <div class="service-icon"> -->
<!--                             <i class="fa fa-th icon-large"></i> -->
<!--                         </div> -->
<!--                         <div class="service-content"> -->
<!--                             <h4>Colecione</h4> -->
<!--                             <p>Colecione os stickerz e troque com seus amigos para completar sua cartela</p> -->
<!--                         </div> -->
<!--                     </div> -->

<!--                     <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="06"> -->
<!--                         <div class="service-icon"> -->
<!--                             <i class="fa fa-ticket icon-large"></i> -->
<!--                         </div> -->
<!--                         <div class="service-content"> -->
<!--                             <h4>Cupom</h4> -->
<!--                             <p>Após completar sua cartela,você gera um cupom para resgatar sua recompensa.</p> -->
<!--                         </div> -->
<!--                     </div> -->
                    
<!--                     <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="07"> -->
<!--                         <div class="service-icon"> -->
<!--                             <i class="fa fa-gift icon-large"></i> -->
<!--                         </div> -->
<!--                         <div class="service-content"> -->
<!--                             <h4>Resgate</h4> -->
<!--                             <p>Vá até o estabelecimento indicado e resgate seu prêmio</p> -->
<!--                         </div> -->
<!--                     </div> -->
                    
<!--                     <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="08"> -->
<!--                         <div class="service-icon"> -->
<!--                             <i class="fa fa-graduation-cap icon-large"></i> -->
<!--                         </div> -->
<!--                         <div class="service-content"> -->
<!--                             <h4>Nível</h4> -->
<!--                             <p>Continue completando os níveis para ganhar recompensas ainda melhores</p> -->
<!--                         </div> -->
<!--                     </div> -->

<!--       </div> -->
        
        
        
        
        
        

        
        
            
        
        
        
        
<!--         Start Testimonials Section -->
<!--         <div> -->
<!--             <div class="container"> -->
<!--                 <div class="row"> -->
<!--  <div class="col-md-8"> -->
  
<!--    <!-- Start Recent Posts Carousel --> 
<!--    <div class="latest-posts"> -->
<%--     <h4 class="classic-title"><span>Novidades</span></h4> --%>
<!--     <div class="latest-posts-classic custom-carousel touch-carousel" data-appeared-items="2"> -->
      
<!--       Posts 1 -->
<!--       <div class="post-row item"> -->
<!--         <div class="left-meta-post"> -->
<%--           <div class="post-date"><span class="day">28</span><span class="month">Dez</span></div> --%>
<!--           <div class="post-type"><i class="fa fa-picture-o"></i></div> -->
<!--         </div> -->
<!--         <h3 class="post-title"><a href="#">Novo nível Giraffas !</a></h3> -->
<!--         <div class="post-content"> -->
<!--           <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p> -->
<!--         </div> -->
<!--       </div> -->
      
<!--       Posts 2 -->
<!--       <div class="post-row item"> -->
<!--         <div class="left-meta-post"> -->
<%--           <div class="post-date"><span class="day">26</span><span class="month">Dez</span></div> --%>
<!--           <div class="post-type"><i class="fa fa-picture-o"></i></div> -->
<!--         </div> -->
<!--         <h3 class="post-title"><a href="#">Novo parceiro</a></h3> -->
<!--         <div class="post-content"> -->
<!--           <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p> -->
<!--         </div> -->
<!--       </div> -->
      
<!--       Posts 3 -->
<!--       <div class="post-row item"> -->
<!--         <div class="left-meta-post"> -->
<%--           <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div> --%>
<!--           <div class="post-type"><i class="fa fa-picture-o"></i></div> -->
<!--         </div> -->
<!--         <h3 class="post-title"><a href="#">Novo parceiro</a></h3> -->
<!--         <div class="post-content"> -->
<!--           <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p> -->
<!--         </div> -->
<!--       </div> -->
      
<!--       Posts 4 -->
<!--       <div class="post-row item"> -->
<!--         <div class="left-meta-post"> -->
<%--           <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div> --%>
<!--           <div class="post-type"><i class="fa fa-picture-o"></i></div> -->
<!--         </div> -->
<!--         <h3 class="post-title"><a href="#">Novo nível !</a></h3> -->
<!--         <div class="post-content"> -->
<!--           <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p> -->
<!--         </div> -->
<!--       </div> -->
      
<!--       Posts 5 -->
<!--       <div class="post-row item"> -->
<!--         <div class="left-meta-post"> -->
<%--           <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div> --%>
<!--           <div class="post-type"><i class="fa fa-picture-o"></i></div> -->
<!--         </div> -->
<!--         <h3 class="post-title"><a href="#">Novo parceiro</a></h3> -->
<!--         <div class="post-content"> -->
<!--           <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p> -->
<!--         </div> -->
<!--       </div> -->
      
<!--       Posts 6 -->
<!--       <div class="post-row item"> -->
<!--         <div class="left-meta-post"> -->
<%--           <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div> --%>
<!--           <div class="post-type"><i class="fa fa-picture-o"></i></div> -->
<!--         </div> -->
<!--         <h3 class="post-title"><a href="#">Novo nível</a></h3> -->
<!--         <div class="post-content"> -->
<!--           <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p> -->
<!--         </div> -->
<!--       </div> -->
      
<!--     </div> -->
<!--   </div> -->
<!--   <!-- End Recent Posts Carousel --> 
  
<!-- </div> -->

<!-- <div class="col-md-4"> -->
  
<!--   <!-- Classic Heading --> 
<%--   <h4 class="classic-title"><span>Testimonials</span></h4> --%>
  
<!--   <!-- Start Testimonials Carousel -->
<!--   <div class="custom-carousel show-one-slide touch-carousel" data-appeared-items="1"> -->
<!--     Testimonial 1 -->
<!--     <div class="classic-testimonials item"> -->
<!--       <div class="testimonial-content"> -->
<!--         <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p> -->
<!--       </div> -->
<%--       <div class="testimonial-author"><span>John Doe</span> - Customer</div> --%>
<!--     </div> -->
<!--     Testimonial 2 -->
<!--     <div class="classic-testimonials item"> -->
<!--       <div class="testimonial-content"> -->
<!--         <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p> -->
<!--       </div> -->
<%--       <div class="testimonial-author"><span>John Doe</span> - Customer</div> --%>
<!--     </div> -->
<!--     Testimonial 3 -->
<!--     <div class="classic-testimonials item"> -->
<!--       <div class="testimonial-content"> -->
<!--         <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p> -->
<!--       </div> -->
<%--       <div class="testimonial-author"><span>John Doe</span> - Customer</div> --%>
<!--     </div> -->
<!--   </div> -->
<!--   <!-- End Testimonials Carousel -->
  
<!-- </div> -->
<!-- </div> -->
<!--             </div> -->
<!--         </div> -->
<!--         End Testimonials Section -->
        
        
        
        
        
        
<!--         Start Team Member Section -->
<!--         <div class="section" style="background:#fff;"> -->
<!--             <div class="container"> -->

<!--                     Start Big Heading -->
<!--                     <div class="big-title text-center" data-animation="fadeInDown" data-animation-delay="01"> -->
<%--                         <h1>Nossos <strong>top stickerz</strong></h1> --%>
<!--                     </div> -->
<!--                     End Big Heading -->

<!--                     Some Text -->
<%--                     <p class="text-center">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium <span class="accent-color sh-tooltip" data-placement="right" title="Simple Tooltip">doloremque laudantium</span>, totam rem aperiam, eaque ipsa quae ab illo inventore --%>
<%--                         <br/>veritatis et quasi <span class="accent-color sh-tooltip" data-placement="bottom" title="Simple Tooltip">architecto</span> beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p> --%>

                    
                    

<!--                     Start Team Members -->
<!--                     <div class="row"> -->

<!--                         Start Memebr 1 -->
<!--                         <div class="col-md-3 col-sm-6 col-xs-12" data-animation="fadeIn" data-animation-delay="03"> -->
<!--                             <div class="team-member modern"> -->
<!--                                 Memebr Photo, Name & Position -->
<!--                                 <div class="member-photo"> -->
<!--                                     <img alt="" src="web/images/team/face_1.png" /> -->
<%--                                     <div class="member-name">Ludmila Aguiar<span>Brasília - DF</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Memebr Words -->
<!--                                 <div class="member-info"> -->
<!--                                     <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 1 -->
<!--                                 <div class="progress-label">Campanhas</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="96%" data-appear-animation-delay="400"> -->
<%--                                         <span class="percentage">16</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 2 -->
<!--                                 <div class="progress-label">Stickerz</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="88%" data-appear-animation-delay="800"> -->
<%--                                         <span class="percentage">312</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 3 -->
<!--                                 <div class="progress-label">Cupons</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="100%" data-appear-animation-delay="1200"> -->
<%--                                         <span class="percentage">26</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Memebr Social Links -->
<!--                                 <div class="member-socail"> -->
<!--                                     <a class="twitter" href="#"><i class="fa fa-twitter"></i></a> -->
<!--                                     <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a> -->
<!--                                     <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a> -->
<!--                                     <a class="flickr" href="#"><i class="fa fa-flickr"></i></a> -->
<!--                                     <a class="mail" href="#"><i class="fa fa-envelope"></i></a> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         End Memebr 1 -->

<!--                         Start Memebr 2 -->
<!--                         <div class="col-md-3 col-sm-6 col-xs-12" data-animation="fadeIn" data-animation-delay="04"> -->
<!--                             <div class="team-member modern"> -->
<!--                                 Memebr Photo, Name & Position -->
<!--                                 <div class="member-photo"> -->
<!--                                     <img alt="" src="web/images/team/face_2.png" /> -->
<%--                                     <div class="member-name">Rogério Senna <span>Rio verde - GO</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Memebr Words -->
<!--                                 <div class="member-info"> -->
<!--                                     <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 1 -->
<!--                                 <div class="progress-label">Campanhas</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="96%" data-appear-animation-delay="400"> -->
<%--                                         <span class="percentage">96%</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 2 -->
<!--                                 <div class="progress-label">Stickerz</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="88%" data-appear-animation-delay="800"> -->
<%--                                         <span class="percentage">88%</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 3 -->
<!--                                 <div class="progress-label">Cupons</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="100%" data-appear-animation-delay="1200"> -->
<%--                                         <span class="percentage">100%</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Memebr Social Links -->
<!--                                 <div class="member-socail"> -->
<!--                                     <a class="twitter" href="#"><i class="fa fa-twitter"></i></a> -->
<!--                                     <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a> -->
<!--                                     <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a> -->
<!--                                     <a class="flickr" href="#"><i class="fa fa-flickr"></i></a> -->
<!--                                     <a class="mail" href="#"><i class="fa fa-envelope"></i></a> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         End Memebr 2 -->

<!--                         Start Memebr 3 -->
<!--                         <div class="col-md-3 col-sm-6 col-xs-12" data-animation="fadeIn" data-animation-delay="05"> -->
<!--                             <div class="team-member modern"> -->
<!--                                 Memebr Photo, Name & Position -->
<!--                                 <div class="member-photo"> -->
<!--                                     <img alt="" src="web/images/team/face_3.png" /> -->
<%--                                     <div class="member-name">Clara nunes<span>Jardins - SP</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Memebr Words -->
<!--                                 <div class="member-info"> -->
<!--                                     <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 1 -->
<!--                                 <div class="progress-label">Campanhas</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="96%" data-appear-animation-delay="400"> -->
<%--                                         <span class="percentage">96%</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 2 -->
<!--                                 <div class="progress-label">Stickerz</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="94%" data-appear-animation-delay="800"> -->
<%--                                         <span class="percentage">94%</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 3 -->
<!--                                 <div class="progress-label">Cupons</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="90%" data-appear-animation-delay="1200"> -->
<%--                                         <span class="percentage">90%</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Memebr Social Links -->
<!--                                 <div class="member-socail"> -->
<!--                                     <a class="twitter" href="#"><i class="fa fa-twitter"></i></a> -->
<!--                                     <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a> -->
<!--                                     <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a> -->
<!--                                     <a class="flickr" href="#"><i class="fa fa-flickr"></i></a> -->
<!--                                     <a class="mail" href="#"><i class="fa fa-envelope"></i></a> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         End Memebr 3 -->

<!--                         Start Memebr 4 -->
<!--                         <div class="col-md-3 col-sm-6 col-xs-12" data-animation="fadeIn" data-animation-delay="06"> -->
<!--                             <div class="team-member modern"> -->
<!--                                 Memebr Photo, Name & Position -->
<!--                                 <div class="member-photo"> -->
<!--                                     <img alt="" src="web/images/team/face_4.png" /> -->
<%--                                     <div class="member-name">Lee Poison Jensen <span>Hayward, Califórnia</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Memebr Words -->
<!--                                 <div class="member-info"> -->
<!--                                     <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 1 -->
<!--                                 <div class="progress-label">Campanhas</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="96%" data-appear-animation-delay="400"> -->
<%--                                         <span class="percentage">96%</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 2 -->
<!--                                 <div class="progress-label">Stickerz</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="85%" data-appear-animation-delay="800"> -->
<%--                                         <span class="percentage">85%</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Start Progress Bar 3 -->
<!--                                 <div class="progress-label">Cupons</div> -->
<!--                                 <div class="progress"> -->
<!--                                     <div class="progress-bar progress-bar-primary" data-progress-animation="100%" data-appear-animation-delay="1200"> -->
<%--                                         <span class="percentage">100%</span> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 Memebr Social Links -->
<!--                                 <div class="member-socail"> -->
<!--                                     <a class="twitter" href="#"><i class="fa fa-twitter"></i></a> -->
<!--                                     <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a> -->
<!--                                     <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a> -->
<!--                                     <a class="flickr" href="#"><i class="fa fa-flickr"></i></a> -->
<!--                                     <a class="mail" href="#"><i class="fa fa-envelope"></i></a> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         End Memebr 4 -->

<!--                     </div> -->
<!--                     End Team Members -->

<!--             </div>.container -->
<!--         </div> -->
<!--         End Team Member Section -->
        
        
<!--         <div id="parallax-one" class="parallax" style="background-image:url(web/images/parallax/bg-02.jpg);"> -->
<!--             <div class="parallax-text-container-1"> -->
<!--               <div class="parallax-text-item"> -->
<!--                 <div class="container"> -->
<!--                   <div class="row"> -->
<!--                     <div class="col-xs-12 col-sm-3 col-md-3"> -->
<!--                       <div class="counter-item"> -->
<!--                         <i class="fa fa-cloud-upload"></i> -->
<!--                         <div class="timer" id="item1" data-to="991" data-speed="1000"></div> -->
<!--                         <h5>Stickerz</h5>                                -->
<!--                       </div> -->
<!--                     </div>   -->
<!--                     <div class="col-xs-12 col-sm-3 col-md-3"> -->
<!--                       <div class="counter-item"> -->
<!--                         <i class="fa fa-check"></i> -->
<!--                         <div class="timer" id="item2" data-to="7394" data-speed="1210"></div> -->
<!--                         <h5>Cupons</h5>                                -->
<!--                       </div> -->
<!--                     </div> -->
<!--                     <div class="col-xs-12 col-sm-3 col-md-3"> -->
<!--                       <div class="counter-item"> -->
<!--                         <i class="fa fa-code"></i> -->
<!--                         <div class="timer" id="item3" data-to="18745" data-speed="2000"></div> -->
<!--                         <h5>Resgates</h5>                                -->
<!--                       </div> -->
<!--                     </div> -->
<!--                     <div class="col-xs-12 col-sm-3 col-md-3"> -->
<!--                       <div class="counter-item"> -->
<!--                         <i class="fa fa-male"></i> -->
<!--                         <div class="timer" id="item4" data-to="8423" data-speed="500"></div> -->
<!--                         <h5>Usuários</h5>                                -->
<!--                       </div> -->
<!--                     </div>                                                   -->
<!--                   </div>          -->
<!--                 </div>        -->
<!--               </div> -->
<!--             </div>         -->
<!--           </div> -->
            
            
            
<!--             Start Pricing Table Section -->
<!--             <div class=" section pricing-section"> -->
<!--                 <div class="container"> -->
<!--                     <div class="row"> -->
<!--                         <div class="col-md-12"> -->
<!--                             Start Big Heading -->
<!--                             <div class="big-title text-center"> -->
<%--                                 <h1>We Have Nice Pricing Plans For <strong>You!</strong></h1> --%>
<!--                             </div> -->
<!--                             End Big Heading -->
					
<!--                             Text -->
<!--                             <p class="text-center">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p> -->
<!--                         </div> -->
<!--                     </div> -->
                    
<!--                     <div class="row pricing-tables"> -->
                        
<!--                         <div class="col-md-3 col-sm-3 col-xs-12"> -->
<!--                             <div class="pricing-table"> -->
<!-- 							<div class="plan-name"> -->
<!-- 								<h3>Basic</h3> -->
<!-- 							</div> -->
<!-- 							<div class="plan-price"> -->
<%-- 								<div class="price-value">$49<span>.00</span></div> --%>
<!-- 								<div class="interval">per month</div> -->
<!-- 							</div> -->
<!-- 							<div class="plan-list"> -->
<!-- 								<ul> -->
<%-- 									<li><strong>40 GB</strong> Storage</li> --%>
<%-- 									<li><strong>40GB</strong> Transfer</li> --%>
<%-- 									<li><strong>10</strong> Domains</li> --%>
<%-- 									<li><strong>20</strong> Projects</li> --%>
<%-- 									<li><strong>Free</strong> installation</li> --%>
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 							<div class="plan-signup"> -->
<!-- 								<a href="#" class="btn-system btn-small">Sign Up Now</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!--                         </div> -->
                        
<!-- 						<div class="col-md-3 col-sm-3 col-xs-12"> -->
<!--                             <div class="pricing-table highlight-plan"> -->
<!-- 							<div class="plan-name"> -->
<!-- 								<h3>Advanced</h3> -->
<!-- 							</div> -->
<!-- 							<div class="plan-price"> -->
<%-- 								<div class="price-value">$99<span>.00</span></div> --%>
<!-- 								<div class="interval">per month</div> -->
<!-- 							</div> -->
<!-- 							<div class="plan-list"> -->
<!-- 								<ul> -->
<%-- 									<li><strong>40 GB</strong> Storage</li> --%>
<%-- 									<li><strong>40GB</strong> Transfer</li> --%>
<%-- 									<li><strong>10</strong> Domains</li> --%>
<%-- 									<li><strong>20</strong> Projects</li> --%>
<%-- 									<li><strong>Free</strong> installation</li> --%>
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 							<div class="plan-signup"> -->
<!-- 								<a href="#" class="btn-system btn-small border-btn">Sign Up Now</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!--                         </div> -->
                        
                        
<!--                         <div class="col-md-3 col-sm-3 col-xs-12"> -->
<!--                             <div class="pricing-table"> -->
<!-- 							<div class="plan-name"> -->
<!-- 								<h3>Professional</h3> -->
<!-- 							</div> -->
<!-- 							<div class="plan-price"> -->
<%-- 								<div class="price-value">$199<span>.00</span></div> --%>
<!-- 								<div class="interval">per month</div> -->
<!-- 							</div> -->
<!-- 							<div class="plan-list"> -->
<!-- 								<ul> -->
<%-- 									<li><strong>40 GB</strong> Storage</li> --%>
<%-- 									<li><strong>40GB</strong> Transfer</li> --%>
<%-- 									<li><strong>10</strong> Domains</li> --%>
<%-- 									<li><strong>20</strong> Projects</li> --%>
<%-- 									<li><strong>Free</strong> installation</li> --%>
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 							<div class="plan-signup"> -->
<!-- 								<a href="#" class="btn-system btn-small">Sign Up Now</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!--                         </div> -->
                        
                        
<!--                         <div class="col-md-3 col-sm-3 col-xs-12"> -->
<!--                             <div class="pricing-table"> -->
<!-- 							<div class="plan-name"> -->
<!-- 								<h3>Extreme</h3> -->
<!-- 							</div> -->
<!-- 							<div class="plan-price"> -->
<%-- 								<div class="price-value">$299<span>.00</span></div> --%>
<!-- 								<div class="interval">per month</div> -->
<!-- 							</div> -->
<!-- 							<div class="plan-list"> -->
<!-- 								<ul> -->
<%-- 									<li><strong>40 GB</strong> Storage</li> --%>
<%-- 									<li><strong>40GB</strong> Transfer</li> --%>
<%-- 									<li><strong>10</strong> Domains</li> --%>
<%-- 									<li><strong>20</strong> Projects</li> --%>
<%-- 									<li><strong>Free</strong> installation</li> --%>
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 							<div class="plan-signup"> -->
<!-- 								<a href="#" class="btn-system btn-small">Sign Up Now</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!--                         </div> -->
						
						
<!-- 					</div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             End Pricing Table Section -->
        
        
        
        
<!--         Start Client/Partner Section -->
<!--         <div class="partner"> -->
<!--         <div class="container"> -->
<!--             <div class="row"> -->

<!--                 Start Big Heading -->
<!-- 		<div class="big-title text-center"> -->
<%-- 			<h1>Our Happy <strong>Clients</strong></h1> --%>
<!-- 			<p class="title-desc">Partners We Work With</p> -->
<!-- 		</div> -->
<!-- 		<!-- End Big Heading --> 
		

<!--             </div>.row -->
<!--         </div>.container -->
<!--         </div> -->
<!--         End Client/Partner Section -->







