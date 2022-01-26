<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<mt:layout_user title="contactus">
	<jsp:attribute name="content">
	
			<div class="page section-header text-center">
			<div class="page-title">
        		<div class="wrapper">
					<h1 class="page-width">Contact Us</h1>
				</div>
      		</div>
		</div>
        <!--End Page Title-->
        <div class="map-section map">
        	<iframe src="https://www.google.com/maps/embed?pb="
				height="350" allowfullscreen></iframe>
            <div class="container">
            	<div class="row">
                	<div class="map-section__overlay-wrapper">
                        <div class="map-section__overlay">
                            <h3 class="h4">Our store</h3>
                            <div class="rte-setting">
                                <p>1- 212-214 Nguyen Dinh Chieu, District 3, HCMC <br />
- 54 - 56 Le Thanh Nghi, Hai Ba Trung, Hanoi <br />
- 285 Doi Can, Ba Dinh, Hanoi</p>
                             
                            </div>
                            <p>
								<a
									href="https://www.google.com/maps/dir//212,+214+Nguy%E1%BB%85n+%C4%90%C3%ACnh+Chi%E1%BB%83u,+Ph%C6%B0%E1%BB%9Dng+6,+Qu%E1%BA%ADn+3,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam/@10.7787052,106.6903679,19.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x31752f3a9dbfeacd:0xd650f03fc37220b5!2m2!1d106.690024!2d10.7787258"
									class="btn btn--secondary btn--small" target="_blank">Get directions</a>
							</p>
                        </div>
                   	</div>
                </div>
            </div>
        </div>
        <div class="bredcrumbWrap">
            <div class="container breadcrumbs">
                <a href="index.html" title="Back to the home page">Home</a><span
					aria-hidden="true">›</span><span>Contact Us</span>
            </div>
        </div>
        
        <div class="container">
            <div class="row">
            	<div class="col-12 col-sm-12 col-md-8 col-lg-8 mb-4">
                	<h2>Drop Us A Line</h2>
                    <p>
Auction Hunter auctions mainly products about world fashion. Unique, unusual, rare and limited items or share your passion for fashion with the world.</p>
                	<div class="formFeilds contact-form form-vertical">
                      <form
							action="${pageContext.request.contextPath }/contactus/send"
							method="post" id="contact_form" class="contact-form">	
                      <div class="row">
                       
                        
                      </div>
                      
                      <div class="row">
                          <div
									class="col-12 col-sm-12 col-md-6 col-lg-6">
                          	<div class="form-group">
                            <input type="tel" name="phone"
											pattern="[0-9\-]*" placeholder="Phone Number">
                            </div>
                          </div>
                          <div
									class="col-12 col-sm-12 col-md-6 col-lg-6">
                          	<div class="form-group">
                            <input type="text" name="subject"
											placeholder="Subject">
                            </div>
                          </div>
                      </div>
                      <div class="row">
                        <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                        	<div class="form-group">
                            <textarea rows="10" name="message"
											placeholder="Your Name and Content comments"></textarea>
                            </div>
                        </div>  
                      </div>
                      <div class="row">
                        <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                            <input type="submit" class="btn"
										value="Send Message">
                        </div>
                     </div>
                     </form>
                    </div>
                </div>
                <div class="col-12 col-sm-12 col-md-4 col-lg-4">
                	
                
                    <ul class="addressFooter">
                        <li><i class="icon anm anm-map-marker-al"></i>
						<p>- 212-214 Nguyen Dinh Chieu, District 3 , HCMC <br />- 54 - 56 Le Thanh Nghi, Hai Ba Trung, Hanoi <br />- 285 Doi Can, Ba Dinh, Hanoi</p></li>
                        <li class="phone"><i
							class="icon anm anm-phone-s"></i>
						<p>(440) 000 000 0000</p></li>
                        <li class="email"><i
							class="icon anm anm-envelope-l"></i>
						<p>Gumsupper40@gmail.com <br /> Daitran477@gmail.com <br /> Bao0924327813@gmail.com </p></li>
                    </ul>
                    <hr />
                    <ul
						class="list--inline site-footer__social-icons social-icons">
                                       <li><a
							class="social-icons__link" href="#" target="_blank"
							title="Belle Multipurpose Bootstrap 4 Template on Facebook"><i
								class="icon icon-facebook"></i></a></li>
                        <li><a class="social-icons__link" href="#"
							target="_blank"
							title="Belle Multipurpose Bootstrap 4 Template on Twitter"><i
								class="icon icon-twitter"></i> <span class="icon__fallback-text">Twitter</span></a></li>
                        <li><a class="social-icons__link" href="#"
							target="_blank"
							title="Belle Multipurpose Bootstrap 4 Template on Pinterest"><i
								class="icon icon-pinterest"></i> <span
								class="icon__fallback-text">Pinterest</span></a></li>
                        <li><a class="social-icons__link" href="#"
							target="_blank"
							title="Belle Multipurpose Bootstrap 4 Template on Instagram"><i
								class="icon icon-instagram"></i> <span
								class="icon__fallback-text">Instagram</span></a></li>
                        <li><a class="social-icons__link" href="#"
							target="_blank"
							title="Belle Multipurpose Bootstrap 4 Template on Tumblr"><i
								class="icon icon-tumblr-alt"></i> <span
								class="icon__fallback-text">Tumblr</span></a></li>
                        <li><a class="social-icons__link" href="#"
							target="_blank"
							title="Belle Multipurpose Bootstrap 4 Template on YouTube"><i
								class="icon icon-youtube"></i> <span class="icon__fallback-text">YouTube</span></a></li>
                        <li><a class="social-icons__link" href="#"
							target="_blank"
							title="Belle Multipurpose Bootstrap 4 Template on Vimeo"><i
								class="icon icon-vimeo-alt"></i> <span
								class="icon__fallback-text">Vimeo</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
		
	</jsp:attribute>
</mt:layout_user>