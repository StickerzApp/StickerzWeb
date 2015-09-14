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
				<s:if test="hasActionErrors()">
            		<script>
					   $('#myModal').modal('show');
            		</script>
				</s:if>
            	
<!--                       Start Purchase Section -->
                <div class="row">
				        <div class="section purchase">
				            <div class="container">
<!-- 				                Start Video Section Content -->
				                <div class="section-video-content text-center">
				
<!-- <!-- 				                    Start Animations Text --> 
<!-- 				                    <h1 class="fittext wite-text uppercase tlt"> -->
<%-- 				                      <span class="texts"> --%>
<%-- 				                        <span>Modern</span> --%>
<%-- 				                        <span>Clean</span> --%>
<%-- 				                        <span>Awesome</span> --%>
<%-- 				                        <span>Cool</span> --%>
<%-- 				                        <span>Great</span> --%>
<%-- 				                      </span> --%>
<%-- 				                        Margo Template is Ready for <br/>Business, Agency <strong>or</strong> Creative Portfolios --%>
<!-- 				                    </h1> -->
<!-- <!-- 				                    End Animations Text --> 
				
				
<!-- <!-- 				                    Start Buttons --> 
<!-- 				                    <a href="#" class="btn-system btn-large"><i class="fa fa-tasks"></i> Check Out Features</a> -->
<!-- 				                    <a href="#" class="btn-system btn-large btn-wite"><i class="fa fa-download"></i> Purchase This Now</a> -->
				
				                </div>
<!-- 				                End Section Content -->
				
				            </div><!-- .container -->
				        </div>
<!-- 				        End Purchase Section -->
                    
                              </div><!-- .row -->
            </div><!-- .container -->
        </div>
        <!-- End Services Section -->
                    
                            <div class="section service">
                    
                    
                    
                    <!-- Start Big Heading -->
	                <div class="big-title text-center" data-animation="fadeInDown" data-animation-delay="01">
	                    <h1>Como <strong>funciona ?</strong></h1>
	                </div>
	                <!-- End Big Heading -->
                    
                    
                    <!-- Start Service Icon 1 -->
                    <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="01">
                        <div class="service-icon">
                            <i class="fa fa-download icon-large"></i>
                        </div>
                        <div class="service-content">
                            <h4>Download do aplicativo</h4>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat Lorem pariatur</p>

                        </div>
                    </div>
                    <!-- End Service Icon 1 -->

                    <!-- Start Service Icon 2 -->
                    <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="02">
                        <div class="service-icon">
                            <i class="fa fa-user icon-large"></i>
                        </div>
                        <div class="service-content">
                            <h4>Acesso</h4>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat Lorem pariatur</p>
                        </div>
                    </div>
                    <!-- End Service Icon 2 -->

                    <!-- Start Service Icon 3 -->
                    <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="03">
                        <div class="service-icon">
                            <i class="fa fa-bars icon-large"></i>
                        </div>
                        <div class="service-content">
                            <h4>Campanhas</h4>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat Lorem pariatur</p>
                        </div>
                    </div>
                    <!-- End Service Icon 3 -->

                    <!-- Start Service Icon 4 -->
                    <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="04">
                        <div class="service-icon">
                            <i class="fa fa-cutlery icon-large"></i>
                        </div>
                        <div class="service-content">
                            <h4>Consumo</h4>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat Lorem pariatur</p>
                        </div>
                    </div>
                    <!-- End Service Icon 4 -->

                    <!-- Start Service Icon 5 -->
                    <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="05">
                        <div class="service-icon">
                            <i class="fa fa-th icon-large"></i>
                        </div>
                        <div class="service-content">
                            <h4>Colecione</h4>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat Lorem pariatur</p>
                        </div>
                    </div>
                    <!-- End Service Icon 5 -->

                    <!-- Start Service Icon 6 -->
                    <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="06">
                        <div class="service-icon">
                            <i class="fa fa-ticket icon-large"></i>
                        </div>
                        <div class="service-content">
                            <h4>Cupom</h4>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat Lorem pariatur</p>
                        </div>
                    </div>
                    <!-- End Service Icon 6 -->

                    <!-- Start Service Icon 7 -->
                    <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="07">
                        <div class="service-icon">
                            <i class="fa fa-gift icon-large"></i>
                        </div>
                        <div class="service-content">
                            <h4>Resgate</h4>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat Lorem pariatur</p>
                        </div>
                    </div>
                    <!-- End Service Icon 7 -->

                    <!-- Start Service Icon 8 -->
                    <div class="col-md-3 col-sm-6 service-box service-center" data-animation="fadeIn" data-animation-delay="08">
                        <div class="service-icon">
                            <i class="fa fa-graduation-cap icon-large"></i>
                        </div>
                        <div class="service-content">
                            <h4>Nível</h4>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat Lorem pariatur</p>
                        </div>
                    </div>
                    <!-- End Service Icon 8 -->

      </div>
        
        
        
        
        
        
        <!-- Start Portfolio Section -->
        <div class="section full-width-portfolio" style="border-top:0; border-bottom:0; background:#fff;">

                <!-- Start Big Heading -->
                <div class="big-title text-center" data-animation="fadeInDown" data-animation-delay="01">
                    <h1><strong>Campanhas</strong></h1>
                </div>
                <!-- End Big Heading -->

                <p class="text-center">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore
                    <br/>veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p>


                <!-- Start Recent Projects Carousel -->
                <ul id="portfolio-list" data-animated="fadeIn">
                
                	<c:forEach items="listaRedes" var="rede">
	                    <li>
	                        <img src="web/images/portfolio-1/1.png" alt="" />
	                        <div class="portfolio-item-content">
	                            <span class="header">${nomeRede}</span>
<!-- 	                            <p class="body">web develpment, design</p> -->
	                        </div>
	                        <a href="#"><i class="more">+</i></a>
	
	                    </li>
                	</c:forEach>
                </ul>

                <!-- End Recent Projects Carousel -->

                

        </div>
        <!-- End Portfolio Section -->
        
        
        
        
            
        
        
        
        
        <!-- Start Testimonials Section -->
        <div>
            <div class="container">
                <div class="row">
 <div class="col-md-8">
  
   <!-- Start Recent Posts Carousel -->
   <div class="latest-posts">
    <h4 class="classic-title"><span>Novidades</span></h4>
    <div class="latest-posts-classic custom-carousel touch-carousel" data-appeared-items="2">
      
      <!-- Posts 1 -->
      <div class="post-row item">
        <div class="left-meta-post">
          <div class="post-date"><span class="day">28</span><span class="month">Dez</span></div>
          <div class="post-type"><i class="fa fa-picture-o"></i></div>
        </div>
        <h3 class="post-title"><a href="#">Novo nível Giraffas !</a></h3>
        <div class="post-content">
          <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
        </div>
      </div>
      
      <!-- Posts 2 -->
      <div class="post-row item">
        <div class="left-meta-post">
          <div class="post-date"><span class="day">26</span><span class="month">Dez</span></div>
          <div class="post-type"><i class="fa fa-picture-o"></i></div>
        </div>
        <h3 class="post-title"><a href="#">Novo parceiro</a></h3>
        <div class="post-content">
          <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
        </div>
      </div>
      
      <!-- Posts 3 -->
      <div class="post-row item">
        <div class="left-meta-post">
          <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div>
          <div class="post-type"><i class="fa fa-picture-o"></i></div>
        </div>
        <h3 class="post-title"><a href="#">Novo parceiro</a></h3>
        <div class="post-content">
          <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
        </div>
      </div>
      
      <!-- Posts 4 -->
      <div class="post-row item">
        <div class="left-meta-post">
          <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div>
          <div class="post-type"><i class="fa fa-picture-o"></i></div>
        </div>
        <h3 class="post-title"><a href="#">Novo nível !</a></h3>
        <div class="post-content">
          <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
        </div>
      </div>
      
      <!-- Posts 5 -->
      <div class="post-row item">
        <div class="left-meta-post">
          <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div>
          <div class="post-type"><i class="fa fa-picture-o"></i></div>
        </div>
        <h3 class="post-title"><a href="#">Novo parceiro</a></h3>
        <div class="post-content">
          <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
        </div>
      </div>
      
      <!-- Posts 6 -->
      <div class="post-row item">
        <div class="left-meta-post">
          <div class="post-date"><span class="day">26</span><span class="month">Dec</span></div>
          <div class="post-type"><i class="fa fa-picture-o"></i></div>
        </div>
        <h3 class="post-title"><a href="#">Novo nível</a></h3>
        <div class="post-content">
          <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit. <a class="read-more" href="#">Read More...</a></p>
        </div>
      </div>
      
    </div>
  </div>
  <!-- End Recent Posts Carousel -->
  
</div>

<div class="col-md-4">
  
  <!-- Classic Heading -->
  <h4 class="classic-title"><span>Testimonials</span></h4>
  
  <!-- Start Testimonials Carousel -->
  <div class="custom-carousel show-one-slide touch-carousel" data-appeared-items="1">
    <!-- Testimonial 1 -->
    <div class="classic-testimonials item">
      <div class="testimonial-content">
        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
      </div>
      <div class="testimonial-author"><span>John Doe</span> - Customer</div>
    </div>
    <!-- Testimonial 2 -->
    <div class="classic-testimonials item">
      <div class="testimonial-content">
        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
      </div>
      <div class="testimonial-author"><span>John Doe</span> - Customer</div>
    </div>
    <!-- Testimonial 3 -->
    <div class="classic-testimonials item">
      <div class="testimonial-content">
        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
      </div>
      <div class="testimonial-author"><span>John Doe</span> - Customer</div>
    </div>
  </div>
  <!-- End Testimonials Carousel -->
  
</div>
</div>
            </div>
        </div>
        <!-- End Testimonials Section -->
        
        
        
        
        
        
        <!-- Start Team Member Section -->
        <div class="section" style="background:#fff;">
            <div class="container">

                    <!-- Start Big Heading -->
                    <div class="big-title text-center" data-animation="fadeInDown" data-animation-delay="01">
                        <h1>Nossos <strong>top stickerz</strong></h1>
                    </div>
                    <!-- End Big Heading -->

                    <!-- Some Text -->
                    <p class="text-center">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium <span class="accent-color sh-tooltip" data-placement="right" title="Simple Tooltip">doloremque laudantium</span>, totam rem aperiam, eaque ipsa quae ab illo inventore
                        <br/>veritatis et quasi <span class="accent-color sh-tooltip" data-placement="bottom" title="Simple Tooltip">architecto</span> beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p>

                    
                    

                    <!-- Start Team Members -->
                    <div class="row">

                        <!-- Start Memebr 1 -->
                        <div class="col-md-3 col-sm-6 col-xs-12" data-animation="fadeIn" data-animation-delay="03">
                            <div class="team-member modern">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="web/images/team/face_1.png" />
                                    <div class="member-name">Ludmila Aguiar<span>Brasília - DF</span>
                                    </div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p>
                                </div>
                                <!-- Start Progress Bar 1 -->
                                <div class="progress-label">Campanhas</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="96%" data-appear-animation-delay="400">
                                        <span class="percentage">16</span>
                                    </div>
                                </div>
                                <!-- Start Progress Bar 2 -->
                                <div class="progress-label">Stickerz</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="88%" data-appear-animation-delay="800">
                                        <span class="percentage">312</span>
                                    </div>
                                </div>
                                <!-- Start Progress Bar 3 -->
                                <div class="progress-label">Cupons</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="100%" data-appear-animation-delay="1200">
                                        <span class="percentage">26</span>
                                    </div>
                                </div>
                                <!-- Memebr Social Links -->
                                <div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Memebr 1 -->

                        <!-- Start Memebr 2 -->
                        <div class="col-md-3 col-sm-6 col-xs-12" data-animation="fadeIn" data-animation-delay="04">
                            <div class="team-member modern">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="web/images/team/face_2.png" />
                                    <div class="member-name">Rogério Senna <span>Rio verde - GO</span>
                                    </div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p>
                                </div>
                                <!-- Start Progress Bar 1 -->
                                <div class="progress-label">Campanhas</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="96%" data-appear-animation-delay="400">
                                        <span class="percentage">96%</span>
                                    </div>
                                </div>
                                <!-- Start Progress Bar 2 -->
                                <div class="progress-label">Stickerz</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="88%" data-appear-animation-delay="800">
                                        <span class="percentage">88%</span>
                                    </div>
                                </div>
                                <!-- Start Progress Bar 3 -->
                                <div class="progress-label">Cupons</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="100%" data-appear-animation-delay="1200">
                                        <span class="percentage">100%</span>
                                    </div>
                                </div>
                                <!-- Memebr Social Links -->
                                <div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Memebr 2 -->

                        <!-- Start Memebr 3 -->
                        <div class="col-md-3 col-sm-6 col-xs-12" data-animation="fadeIn" data-animation-delay="05">
                            <div class="team-member modern">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="web/images/team/face_3.png" />
                                    <div class="member-name">Clara nunes<span>Jardins - SP</span>
                                    </div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p>
                                </div>
                                <!-- Start Progress Bar 1 -->
                                <div class="progress-label">Campanhas</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="96%" data-appear-animation-delay="400">
                                        <span class="percentage">96%</span>
                                    </div>
                                </div>
                                <!-- Start Progress Bar 2 -->
                                <div class="progress-label">Stickerz</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="94%" data-appear-animation-delay="800">
                                        <span class="percentage">94%</span>
                                    </div>
                                </div>
                                <!-- Start Progress Bar 3 -->
                                <div class="progress-label">Cupons</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="90%" data-appear-animation-delay="1200">
                                        <span class="percentage">90%</span>
                                    </div>
                                </div>
                                <!-- Memebr Social Links -->
                                <div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Memebr 3 -->

                        <!-- Start Memebr 4 -->
                        <div class="col-md-3 col-sm-6 col-xs-12" data-animation="fadeIn" data-animation-delay="06">
                            <div class="team-member modern">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="web/images/team/face_4.png" />
                                    <div class="member-name">Lee Poison Jensen <span>Hayward, Califórnia</span>
                                    </div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p>
                                </div>
                                <!-- Start Progress Bar 1 -->
                                <div class="progress-label">Campanhas</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="96%" data-appear-animation-delay="400">
                                        <span class="percentage">96%</span>
                                    </div>
                                </div>
                                <!-- Start Progress Bar 2 -->
                                <div class="progress-label">Stickerz</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="85%" data-appear-animation-delay="800">
                                        <span class="percentage">85%</span>
                                    </div>
                                </div>
                                <!-- Start Progress Bar 3 -->
                                <div class="progress-label">Cupons</div>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-primary" data-progress-animation="100%" data-appear-animation-delay="1200">
                                        <span class="percentage">100%</span>
                                    </div>
                                </div>
                                <!-- Memebr Social Links -->
                                <div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Memebr 4 -->

                    </div>
                    <!-- End Team Members -->

            </div><!-- .container -->
        </div>
        <!-- End Team Member Section -->
        
        
        <div id="parallax-one" class="parallax" style="background-image:url(web/images/parallax/bg-02.jpg);">
            <div class="parallax-text-container-1">
              <div class="parallax-text-item">
                <div class="container">
                  <div class="row">
                    <div class="col-xs-12 col-sm-3 col-md-3">
                      <div class="counter-item">
                        <i class="fa fa-cloud-upload"></i>
                        <div class="timer" id="item1" data-to="991" data-speed="1000"></div>
                        <h5>Stickerz</h5>                               
                      </div>
                    </div>  
                    <div class="col-xs-12 col-sm-3 col-md-3">
                      <div class="counter-item">
                        <i class="fa fa-check"></i>
                        <div class="timer" id="item2" data-to="7394" data-speed="1210"></div>
                        <h5>Cupons</h5>                               
                      </div>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3">
                      <div class="counter-item">
                        <i class="fa fa-code"></i>
                        <div class="timer" id="item3" data-to="18745" data-speed="2000"></div>
                        <h5>Resgates</h5>                               
                      </div>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3">
                      <div class="counter-item">
                        <i class="fa fa-male"></i>
                        <div class="timer" id="item4" data-to="8423" data-speed="500"></div>
                        <h5>Usuários</h5>                               
                      </div>
                    </div>                                                  
                  </div>         
                </div>       
              </div>
            </div>        
          </div>
            
            
            
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
<!-- 		<!-- End Big Heading --> -->
		
<!-- 		<!--Start Clients Carousel--> -->
<!-- 		<div class="our-clients"> -->
<!-- 			<div class="clients-carousel custom-carousel touch-carousel navigation-3" data-appeared-items="5" data-navigation="true"> -->
				
<!-- 				Client 1 -->
<!-- 				<div class="client-item item"> -->
<!-- 					<a href="#"><img src="web/images/c1.png" alt="" /></a> -->
<!-- 				</div> -->
				
<!-- 				Client 2 -->
<!-- 				<div class="client-item item"> -->
<!-- 					<a href="#"><img src="web/images/c2.png" alt="" /></a> -->
<!-- 				</div> -->
				
<!-- 				Client 3 -->
<!-- 				<div class="client-item item"> -->
<!-- 					<a href="#"><img src="web/images/c3.png" alt="" /></a> -->
<!-- 				</div> -->
				
<!-- 				Client 4 -->
<!-- 				<div class="client-item item"> -->
<!-- 					<a href="#"><img src="web/images/c4.png" alt="" /></a> -->
<!-- 				</div> -->
				
<!-- 				Client 5 -->
<!-- 				<div class="client-item item"> -->
<!-- 					<a href="#"><img src="web/images/c5.png" alt="" /></a> -->
<!-- 				</div> -->
				
<!-- 				Client 6 -->
<!-- 				<div class="client-item item"> -->
<!-- 					<a href="#"><img src="web/images/c6.png" alt="" /></a> -->
<!-- 				</div> -->
				
<!-- 				Client 7 -->
<!-- 				<div class="client-item item"> -->
<!-- 					<a href="#"><img src="web/images/c7.png" alt="" /></a> -->
<!-- 				</div> -->
				
<!-- 				Client 8 -->
<!-- 				<div class="client-item item"> -->
<!-- 					<a href="#"><img src="web/images/c8.png" alt="" /></a> -->
<!-- 				</div> -->
				
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<!-- End Clients Carousel --> -->
<!--             </div>.row -->
<!--         </div>.container -->
<!--         </div> -->
<!--         End Client/Partner Section -->
	</t:putAttribute>
</t:insertDefinition>







