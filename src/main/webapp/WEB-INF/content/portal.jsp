<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<t:insertDefinition name=".template.default">
	<t:putAttribute name="middle" >
       
       
        <!-- Start Services Section -->
             <!-- Start Portfolio Section -->
        <div class="section full-width-portfolio" style="border-top:0; border-bottom:0; background:#fff;">
            <div class="container">
                    <!-- Start Team Members -->
                    <div class="row">

                        <!-- Start Memebr 1 -->
<!--                         <div class="col-md-3 col-sm-6 col-xs-12" data-animation="fadeIn" data-animation-delay="03"> -->
<!--                             <div class="team-member modern"> -->
<!--                                 Memebr Photo, Name & Position -->
<!--                                 <div class="member-photo"> -->
<!--                                     <img alt="" src="web/images/team/face_6.png" /> -->
<%--                                     <div class="member-name">${sessaoUsuario.descNome}<span>Ranking #13.010</span> --%>
<!--                                     </div> -->
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
                        <!-- End Memebr 1 -->
                        
                        
                         <div class="col-md-3">
                         
                         	<!-- Classic Heading -->
							<h4 class="classic-title">
								<span>Amigos
								</span>
							</h4>
							
<%-- 							<c:forEach items="${listaRedes}" var="rede"> --%>
								<ul id="friendslist">
			                    <li>
			                        <img src="web/images/friend.png" alt="" />
			                    </li>
			                    <li>
			                        <img src="web/images/friend.png" alt="" />
			                    </li>
			                    <li>
			                        <img src="web/images/friend.png" alt="" />
			                    </li>
			                    <li>
			                        <img src="web/images/friend.png" alt="" />
			                    </li>
			                    <li>
			                        <img src="web/images/friend.png" alt="" />
			                    </li>
			                    <li>
			                        <img src="web/images/friend.png" alt="" />
			                    </li>
			                    <li>
			                        <img src="web/images/friend.png" alt="" />
			                    </li>
			                    <li>
			                        <img src="web/images/friend.png" alt="" />
			                    </li>
			                    <li>
			                        <img src="web/images/friend.png" alt="" />
			                    </li>
								</ul>
<%-- 		                	</c:forEach> --%>
                         </div>
                         <div class="col-md-6">
                         	<!-- Classic Heading -->
							<h4 class="classic-title">
								<span>Campanhas</span>
							</h4>
							
							 <div class="card">
							    <div class="card-image waves-effect waves-block waves-light">
							  		<a href="#"style="padding-top: 10px;"><img class="activator" src="web/images/friend.png" alt=""  />Marcelo Doido</a>
							    </div>
							    <div class="card-content">
							    	 <img src="web/images/placeholder.png" width="60" height="60" alt="" /><img src="web/images/change.png" width="32" height="32" alt="" /> <img src="web/images/placeholder.png" width="60" height="60"  alt="" />
							      <p>
							      <br/>
							      	<a class="activator main-button green" style="padding: 1px 6px; background-color: green!important;" href="#">Aceitar</a>
							      	<a class="activator main-button green" style="padding: 1px 6px;" href="#">Recusar</a>
							      </p>
							    </div>
							    <div class="card-reveal">
							      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
							      <img src="web/images/placeholder.png" width="60" height="60" alt="" />
							      <p>Você acaba de receber um novo sticker. <a href="#">Quer vê-lo ?</a></p>
							    </div>
							  </div>
                         </div> 
                         <div class="col-md-3">
                         	<!-- Classic Heading -->
							<h4 class="classic-title">
								<span>Trocas</span>
							</h4>
							
							 <div class="card">
							    <div class="card-image waves-effect waves-block waves-light">
							  		<a href="#"style="padding-top: 10px;"><img class="activator" src="web/images/friend.png" alt=""  />Bruno Teixeira</a>
							    </div>
							    <div class="card-content">
							    	 <img src="web/images/placeholder.png" width="60" height="60" alt="" /><img src="web/images/change.png" width="32" height="32" alt="" /> <img src="web/images/placeholder.png" width="60" height="60"  alt="" />
							      <p>
							      <br/>
							      	<a class="activator main-button green" style="padding: 1px 6px; background-color: green!important;" href="#">Aceitar</a>
							      	<a class="activator main-button green" style="padding: 1px 6px;" href="#">Recusar</a>
							      </p>
							    </div>
							    <div class="card-reveal">
							      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
							      <img src="web/images/placeholder.png" width="60" height="60" alt="" />
							      <p>Você acaba de receber um novo sticker. <a href="#">Quer vê-lo ?</a></p>
							    </div>
							  </div>
							 <div class="card">
							    <div class="card-image waves-effect waves-block waves-light">
							  		<a href="#"style="padding-top: 10px;"><img class="activator" src="web/images/friend.png" alt=""  />Marcelo Doido</a>
							    </div>
							    <div class="card-content">
							    	 <img src="web/images/placeholder.png" width="60" height="60" alt="" /><img src="web/images/change.png" width="32" height="32" alt="" /> <img src="web/images/placeholder.png" width="60" height="60"  alt="" />
							      <p>
							      <br/>
							      	<a class="activator main-button green" style="padding: 1px 6px; background-color: green!important;" href="#">Aceitar</a>
							      	<a class="activator main-button green" style="padding: 1px 6px;" href="#">Recusar</a>
							      </p>
							    </div>
							    <div class="card-reveal">
							      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
							      <img src="web/images/placeholder.png" width="60" height="60" alt="" />
							      <p>Você acaba de receber um novo sticker. <a href="#">Quer vê-lo ?</a></p>
							    </div>
							  </div>
							 <div class="card">
							    <div class="card-image waves-effect waves-block waves-light">
							  		<a href="#"style="padding-top: 10px;"><img class="activator" src="web/images/friend.png" alt=""  />Gustavo Guaxinim</a>
							    </div>
							    <div class="card-content">
							    	 <img src="web/images/placeholder.png" width="60" height="60" alt="" /><img src="web/images/change.png" width="32" height="32" alt="" /> <img src="web/images/placeholder.png" width="60" height="60"  alt="" />
							      <p>
							      <br/>
							      	<a class="activator main-button green" style="padding: 1px 6px; background-color: green!important;" href="#">Aceitar</a>
							      	<a class="activator main-button green" style="padding: 1px 6px;" href="#">Recusar</a>
							      </p>
							    </div>
							    <div class="card-reveal">
							      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
							      <img src="web/images/placeholder.png" width="60" height="60" alt="" />
							      <p>Você acaba de receber um novo sticker. <a href="#">Quer vê-lo ?</a></p>
							    </div>
							  </div>
                         </div> 
                        
            </div><!--.row -->
        </div><!--.container-->
        </div>
	</t:putAttribute>
	<t:putAttribute name="footer" value="" />	
</t:insertDefinition>








