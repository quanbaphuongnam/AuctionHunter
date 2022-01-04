<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:layout_user title="home">
	<jsp:attribute name="content">
		<!--Collection Banner-->
    	<div class="collection-header">
			<div class="collection-hero">
        		<div class="collection-hero__image"></div>
        		<div class="collection-hero__title-wrapper">
					<h1 class="collection-hero__title page-width">Auctions</h1>
				</div>
      		</div>
		</div>
        <!--End Collection Banner-->
        
        <div class="container">
        	<div class="row">
            	<!--Sidebar-->
            	<div
					class="col-12 col-sm-12 col-md-3 col-lg-3 sidebar filterbar">
                	<div class="closeFilter d-block d-md-none d-lg-none">
						<i class="icon icon anm anm-times-l"></i>
					</div>
                	<div class="sidebar_tags">
                    	<!--Categories-->
                    	<div
							class="sidebar_widget categories filter-widget">
                            <div class="widget-title">
								<h2>Categories</h2>
							</div>
                            <div class="widget-content">
                                <ul class="sidebar_categories">
                                    <li class="level1 sub-level"><a
										href="#;" class="site-nav">Clothing</a>
                                    	<ul class="sublinks">
                                        	<li class="level2"><a
												href="#;" class="site-nav">Men</a></li>
                                            <li class="level2"><a
												href="#;" class="site-nav">Women</a></li>
                                            <li class="level2"><a
												href="#;" class="site-nav">Child</a></li>
                                            <li class="level2"><a
												href="#;" class="site-nav">View All Clothing</a></li>
                                        </ul>
                                    </li>
                                    <li class="level1 sub-level"><a
										href="#;" class="site-nav">Jewellery</a>
                                    	<ul class="sublinks">
                                        	<li class="level2"><a
												href="#;" class="site-nav">Ring</a></li>
                                            <li class="level2"><a
												href="#;" class="site-nav">Neckalses</a></li>
                                            <li class="level2"><a
												href="#;" class="site-nav">Eaarings</a></li>
                                            <li class="level2"><a
												href="#;" class="site-nav">View All Jewellery</a></li>
                                        </ul>
                                    </li>
                                    <li class="lvl-1"><a href="#;"
										class="site-nav">Shoes</a></li>
                                    <li class="lvl-1"><a href="#;"
										class="site-nav">Accessories</a></li>
                                    <li class="lvl-1"><a href="#;"
										class="site-nav">Collections</a></li>
                                    <li class="lvl-1"><a href="#;"
										class="site-nav">Sale</a></li>
                                    <li class="lvl-1"><a href="#;"
										class="site-nav">Page</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--Categories-->
                        <!--Price Filter-->
                        <div
							class="sidebar_widget filterBox filter-widget">
                            <div class="widget-title">
                            	<h2>Price</h2>
                            </div>
                            <form action="#" method="post"
								class="price-filter">
                                <div id="slider-range"
									class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
                                	<div
										class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                    <span
										class="ui-slider-handle ui-state-default ui-corner-all"
										tabindex="0"></span>
                                    <span
										class="ui-slider-handle ui-state-default ui-corner-all"
										tabindex="0"></span>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <p class="no-margin">
											<input id="amount" type="text">
										</p>
                                    </div>
                                    <div
										class="col-6 text-right margin-25px-top">
                                        <button
											class="btn btn-secondary btn--small">filter</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!--End Price Filter-->
                        <!--Size Swatches-->
                        <div
							class="sidebar_widget filterBox filter-widget size-swacthes">
                            <div class="widget-title">
								<h2>Size</h2>
							</div>
                            <div class="filter-color swacth-list">
                            	<ul>
                                    <li><span
										class="swacth-btn checked">X</span></li>
                                    <li><span class="swacth-btn">XL</span></li>
                                    <li><span class="swacth-btn">XLL</span></li>
                                    <li><span class="swacth-btn">M</span></li>
                                    <li><span class="swacth-btn">L</span></li>
                                    <li><span class="swacth-btn">S</span></li>
                                    <li><span class="swacth-btn">XXXL</span></li>
                                    <li><span class="swacth-btn">XXL</span></li>
                                    <li><span class="swacth-btn">XS</span></span></li>
                                </ul>
                            </div>
                        </div>
                        <!--End Size Swatches-->
                      
                        <!--End Color Swatches-->
                        <!--Brand-->
                        <div
							class="sidebar_widget filterBox filter-widget">
                            <div class="widget-title">
								<h2>Brands</h2>
							</div>
                            <ul>
                                <li>
                                  <input type="checkbox"
									value="allen-vela" id="check1">
                                  <label for="check1"><span><span></span></span>Allen Vela</label>
                                </li>
                                <li>
                                  <input type="checkbox" value="oxymat"
									id="check3">
                                  <label for="check3"><span><span></span></span>Oxymat</label>
                                </li>
                                <li>
                                  <input type="checkbox" value="vanelas"
									id="check4">
                                  <label for="check4"><span><span></span></span>Vanelas</label>
                                </li>
                                <li>
                                  <input type="checkbox" value="pagini"
									id="check5">
                                  <label for="check5"><span><span></span></span>Pagini</label>
                                </li>
                                <li>
                                  <input type="checkbox" value="monark"
									id="check6">
                                  <label for="check6"><span><span></span></span>Monark</label>
                                </li>
                            </ul>
                        </div>
                        <!--End Brand-->
                        <!--Popular Products-->
						
                        <!--End Popular Products-->
                        <!--Banner-->
                        <div class="sidebar_widget static-banner">
                        	<img
								src="${pageContext.request.contextPath }/resources/user/${pageContext.request.contextPath }/resources/user/assets/images/side-banner-2.jpg"
								alt="" />
                        </div>
                        <!--Banner-->
                        <!--Information-->
                        <div class="sidebar_widget">
                            <div class="widget-title">
								<h2>Information</h2>
							</div>
                            <div class="widget-content">
								<p>Use this text to share information about your brand with your customers. Describe a product, share announcements, or welcome customers to your store.</p>
							</div>
                        </div>
                        <!--end Information-->
                        <!--Product Tags-->
                        <div class="sidebar_widget">
                          <div class="widget-title">
                            <h2>Product Tags</h2>
                          </div>
                          <div class="widget-content">
                            <ul class="product-tags">
                              <li><a href="#"
										title="Show products matching tag $100 - $400">$100 - $400</a></li>
                              <li><a href="#"
										title="Show products matching tag $400 - $600">$400 - $600</a></li>
                              <li><a href="#"
										title="Show products matching tag $600 - $800">$600 - $800</a></li>
                              <li><a href="#"
										title="Show products matching tag Above $800">Above $800</a></li>
                              <li><a href="#"
										title="Show products matching tag Allen Vela">Allen Vela</a></li>
                              <li><a href="#"
										title="Show products matching tag Black">Black</a></li>
                              <li><a href="#"
										title="Show products matching tag Blue">Blue</a></li>
                              <li><a href="#"
										title="Show products matching tag Cantitate">Cantitate</a></li>
                              <li><a href="#"
										title="Show products matching tag Famiza">Famiza</a></li>
                              <li><a href="#"
										title="Show products matching tag Gray">Gray</a></li>
                              <li><a href="#"
										title="Show products matching tag Green">Green</a></li>
                              <li><a href="#"
										title="Show products matching tag Hot">Hot</a></li>
                              <li><a href="#"
										title="Show products matching tag jean shop">jean shop</a></li>
                              <li><a href="#"
										title="Show products matching tag jesse kamm">jesse kamm</a></li>
                              <li><a href="#"
										title="Show products matching tag L">L</a></li>
                              <li><a href="#"
										title="Show products matching tag Lardini">Lardini</a></li>
                              <li><a href="#"
										title="Show products matching tag lareida">lareida</a></li>
                              <li><a href="#"
										title="Show products matching tag Lirisla">Lirisla</a></li>
                              <li><a href="#"
										title="Show products matching tag M">M</a></li>
                              <li><a href="#"
										title="Show products matching tag mini-dress">mini-dress</a></li>
                              <li><a href="#"
										title="Show products matching tag Monark">Monark</a></li>
                              <li><a href="#"
										title="Show products matching tag Navy">Navy</a></li>
                              <li><a href="#"
										title="Show products matching tag new">new</a></li>
                              <li><a href="#"
										title="Show products matching tag new arrivals">new arrivals</a></li>
                              <li><a href="#"
										title="Show products matching tag Orange">Orange</a></li>
                              <li><a href="#"
										title="Show products matching tag oxford">oxford</a></li>
                              <li><a href="#"
										title="Show products matching tag Oxymat">Oxymat</a></li>
                            </ul>
                            <span class="btn btn--small btnview">View all</span> </div>
                        </div>
                        <!--end Product Tags-->
                    </div>
                </div>
                <!--End Sidebar-->
                <!--Main Content-->
                <div class="col-12 col-sm-12 col-md-9 col-lg-9 main-col">
                	
                          <!--MainContent-->
            <div id="MainContent" class="main-content" role="main">
                <!--Breadcrumb-->
                <div class="bredcrumbWrap">
                    <div class="container breadcrumbs">
                        <a href="index.html"
									title="Back to the home page">Home</a><span aria-hidden="true">></span><span>Product auction</span>
                     </div>
                </div>
                <!--End Breadcrumb-->
                
                <div id="ProductSection-product-template"
							class="product-template__container prstyle1 container">
                    <!--product-single-->
                    <div class="product-single">
                        <div class="row">
                            <div
										class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="product-details-img">
                                    <div class="product-thumb">
                                        <div id="gallery"
													class="product-dec-slider-2 product-tab-left">
                                            <a
														data-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big1.jpg"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big1.jpg"
														class="slick-slide slick-cloned" data-slick-index="-4"
														aria-hidden="true" tabindex="-1">
                                                <img
														class="blur-up lazyload"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible0.jpg"
														alt="" />
                                            </a>
                                            <a
														data-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big2.jpg"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big2.jpg"
														class="slick-slide slick-cloned" data-slick-index="-3"
														aria-hidden="true" tabindex="-1">
                                                <img
														class="blur-up lazyload"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible.jpg"
														alt="" />
                                            </a>
                                            <a
														data-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big3.jpg"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big3.jpg"
														class="slick-slide slick-cloned" data-slick-index="-2"
														aria-hidden="true" tabindex="-1">
                                                <img
														class="blur-up lazyload"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible6.jpg"
														alt="" />
                                            </a>
                                            <a
														data-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible7-big.jpg"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible7-big.jpg"
														class="slick-slide slick-cloned" data-slick-index="-1"
														aria-hidden="true" tabindex="-1">
                                                <img
														class="blur-up lazyload"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible7.jpg"
														alt="" />
                                            </a>
                                            <a
														data-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big4.jpg"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big4.jpg"
														class="slick-slide slick-cloned" data-slick-index="0"
														aria-hidden="true" tabindex="-1">
                                                <img
														class="blur-up lazyload"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible8.jpg"
														alt="" />
                                            </a>
                                            <a
														data-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big5.jpg"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big5.jpg"
														class="slick-slide slick-cloned" data-slick-index="1"
														aria-hidden="true" tabindex="-1">
                                                <img
														class="blur-up lazyload"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible9.jpg"
														alt="" />
                                            </a>
                                            <a
														data-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big6.jpg"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big6.jpg"
														class="slick-slide slick-cloned" data-slick-index="2"
														aria-hidden="true" tabindex="-1">
                                                <img
														class="blur-up lazyload"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible1.jpg"
														alt="" />
                                            </a>
                                            <a
														data-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big7.jpg"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big7.jpg"
														class="slick-slide slick-cloned" data-slick-index="3"
														aria-hidden="true" tabindex="-1">
                                                <img
														class="blur-up lazyload"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible2.jpg"
														alt="" />
                                            </a>
                                            <a
														data-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big8.jpg"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big8.jpg"
														class="slick-slide slick-cloned" data-slick-index="4"
														aria-hidden="true" tabindex="-1">
                                                <img
														class="blur-up lazyload"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible3.jpg"
														alt="" />
                                            </a>
                                            <a
														data-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big9.jpg"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big9.jpg"
														class="slick-slide slick-cloned" data-slick-index="5"
														aria-hidden="true" tabindex="-1">
                                                <img
														class="blur-up lazyload"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible4.jpg"
														alt="" />
                                            </a>
                                            <a
														data-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big10.jpg"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big10.jpg"
														class="slick-slide slick-cloned" data-slick-index="6"
														aria-hidden="true" tabindex="-1">
                                                <img
														class="blur-up lazyload"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible5.jpg"
														alt="" />
                                            </a>
                                        </div>
                                    </div>
                                    <div
												class="zoompro-wrap product-zoom-right pl-20">
                                        <div class="zoompro-span">
                                            <img
														class="zoomproblur-up lazyload"
														data-zoom-image="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big1.jpg"
														alt=""
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big1.jpg" />
                                        </div>
                                        <div class="product-labels">
													<span class="lbl on-sale">Sale</span><span
														class="lbl pr-label1">new</span>
												</div>
                                        <div class="product-buttons">
                                            <a
														href="https://www.youtube.com/watch?v=93A2jOW5Mog"
														class="btn popup-video" title="View Video"><i
														class="icon anm anm-play-r" aria-hidden="true"></i></a>
                                            <a href="#"
														class="btn prlightbox" title="Zoom"><i
														class="icon anm anm-expand-l-arrows" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <div class="lightboximages">
                                        <a
													href="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big1.jpg"
													data-size="1462x2048"></a>
                                        <a
													href="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big2.jpg"
													data-size="1462x2048"></a>
                                        <a
													href="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big3.jpg"
													data-size="1462x2048"></a>
                                        <a
													href="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible7-big.jpg"
													data-size="1462x2048"></a>
                                        <a
													href="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big4.jpg"
													data-size="1462x2048"></a>
                                        <a
													href="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big5.jpg"
													data-size="1462x2048"></a>
                                        <a
													href="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big6.jpg"
													data-size="731x1024"></a>
                                        <a
													href="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big7.jpg"
													data-size="731x1024"></a>
                                        <a
													href="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big8.jpg"
													data-size="731x1024"></a>
                                        <a
													href="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big9.jpg"
													data-size="731x1024"></a>
                                        <a
													href="${pageContext.request.contextPath }/resources/user/assets/images/product-detail-page/camelia-reversible-big10.jpg"
													data-size="731x1024"></a>
                                    </div>
        
                                </div>
                            </div>
                            <div
										class="col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="product-single__meta">
                                        <h1
												class="product-single__title">Giày Utraboot</h1>
                                        <div
												class="product-nav clearfix">					
                                            <a href="#" class="next"
													title="Next"><i class="fa fa-angle-right"
													aria-hidden="true"></i></a>
                                        </div>
                                        <div class="prInfoRow">
                                           
                                            <div class="product-sku">Category: <span
														class="variant-sku">Adidas</span>
												</div>
                                           
                                        </div>
                                        
                                        <p
												class="product-single__price product-single__price-product-template">
                                            <span
													class="visually-hidden">Regular price</span>
                                           
                                
                                     
                                            <span class="discount-badge"> <span
													class="devider"></span>&nbsp;
                                                <span>Buy prices now </span>
                                                <span
													id="SaveAmount-product-template"
													class="product-single__save-amount">
                                                <span class="money">$1000.00</span>
                                                </span>
                                                
                                            </span>  
                                        </p>
                                      <!--   winner -->
                                       
                                            
                                            
                                             <div class="orderMsg"
												data-user="23" data-time="24">
                                       
                                       
                                                <img
													style="margin-top: 8px"
													src="${pageContext.request.contextPath }/resources/user/assets/images/order-icon.jpg"
													alt="" />
                                                <p
													class="product-single__price product-single__price-product-template">
                         
                                                <span
														class="product-price__price product-price__price-product-template product-price__sale product-price__sale--single">
                                                <span
														id="ProductPrice-product-template"><span
															class="money">$500.00</span></span>
                                            </span>
                                              </p>
                                              </div> 
                                                <span>
                                            
                                            CURRENT WINNER:  </span>
                                                <div
												id="quantity_message">
												<span class="items">daxua123</span>
											</div>
                                                 
                                      
                                        
                                           <!--  end winner -->  
                                    
                                        </div>
                                   
                                    
                                 
                                   
                                        <p class="infolinks"> <a
												href="#productInquiry" class="emaillink btn"> Ask About this Product</a>
										</p>
                                        <!-- Product Action -->
                                        <div
											class="product-action clearfix">
                                            <div
												class="product-form__item--quantity">
                                                <div class="wrapQtyBtn">
                                                    <div
														class="qtyField">
                                                        <a
															class="qtyBtn minus" href="javascript:void(0);"><i
															class="fa anm anm-minus-r" aria-hidden="true"></i></a>
                                                        <input
															style="width: 80px;" type="number" step="100" min="220"
															max="10000" id="Quantity" name="quantity" value="200"
															class="product-form__input qty items">
                                                        <a
															class="qtyBtn plus" href="javascript:void(0);"><i
															class="fa anm anm-plus-r" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                            </div>                                
                                            <div
												class="product-form__item--submit">
                                                <button
													style="margin-top: 2px" type="button" name="add"
													class="btn product-form__cart-submit">
                                                    <span>Place Bid</span>
                                                </button>
                                            </div>
                                               <!-- countdown start -->
                                    <div
												class="saleTime product-countdown"
												data-countdown="2022/03/01"></div>
                                    <!-- countdown end -->
                                            <div
												class="shopify-payment-button" data-shopify="payment-button">
                                                <button
													style="margin: 0px; margin-top: 2px;" type="button"
													class="shopify-payment-button__button shopify-payment-button__button--unbranded">Buy it now</button>
                                            </div>
                                        </div>
                                        <!-- End Product Action -->
                                    </form>
                                     <div
											class="product-single__description rte">
                                        <ul>
                                            <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
                                          
                                        </ul>
                                    </div>
                                    <div class="display-table shareRow">
                                             <div class="tab-content">
                                <h3>History Bid</h3>
                             
                                <div  style="overflow:auto; height:100px;">
                                <table>
                                  <tbody>
                                      <tr>
                                      <th>User</th>
                                      <th>Amount</th>
                                      <th>Time</th>
                                    </tr>
                                   <tr>
                                      <td>cuasdw</td>
                                      <td>20222</td> 
                                      <td>12/12/5321 01:32:34</td>
                                    </tr>
                                    <tr>
                                    	<td>yassss</td>
                                      	<td>1233</td>
                                      	<td>12/12/5321  01:32:34</td>
                                    </tr>
                                    <tr>
                                      	<td>eeeee</td>
                                    	<td>1234</td>
                                      	<td>12/12/5321  01:32:34</td>
                                    </tr>
                                     <tr>
                                      <td>cuasdw</td>
                                      <td>20222</td> 
                                      <td>12/12/5321 01:32:34</td>
                                    </tr>
                                    <tr>
                                    	<td>yassss</td>
                                      	<td>1233</td>
                                      	<td>12/12/5321  01:32:34</td>
                                    </tr>
                                    <tr>
                                      	<td>eeeee</td>
                                    	<td>1234</td>
                                      	<td>12/12/5321  01:32:34</td>
                                    </tr>
                                  </tbody>
                                </table>
                          </div>                  
                                        </div>
                                  
                                </div>
                        </div>
                    </div>
                    <!--End-product-single-->
                 
                    <!--Product Tabs-->
                    
                    <!--End Product Tabs-->
                    <!--Related Product Slider-->
                    <div class="related-product grid-products">
                        <header class="section-header">
                            <h2
										class="section-header__title text-center h2">
									<span>Description</span>
								</h2>
                               <div >
                                <div >
                                    
                                    <h3>Sed ut perspiciatis unde omnis iste natus error sit voluptatem</h3>
                                    <p>You can change the position of any sections such as slider, banner, products, collection and so on by just dragging and dropping.&nbsp;</p>
                                    <h3>Lorem Ipsum is not simply random text.</h3>
<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>
                                    <p>Change colors, fonts, banners, megamenus and more. Preview changes are live before saving them.</p>
                               
                                    <h3>Lorem Ipsum is not simply random text.</h3>
<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>
                                  
                                </div>
                            </div>
                        </header>
                        <div class="productPageSlider">
                            <div class="col-12 item">
                                <!-- start product image -->
                                <div class="product-image">
                                    <!-- start product image -->
                                    <a href="#">
                                        <!-- image -->
                                        <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image1.jpg"
												alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image1-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image1-1.jpg"
												alt="image" title="product">
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div
													class="product-labels rectangular">
												<span class="lbl on-sale">-16%</span> <span
														class="lbl pr-label1">new</span>
											</div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
        
                                    <!-- Start product button -->
                                    <form class="variants add"
												action="#" onclick="window.location.href='cart.html'"
												method="post">
                                        <button
													class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                    </form>
                                    <div class="button-set">
                                        <a href="#" title="Quick View"
													class="quick-view" tabindex="0">
                                            <i
													class="icon anm anm-search-plus-r"></i>
                                        </a>
                                        <div class="wishlist-btn">
                                            <a
														class="wishlist add-to-wishlist" href="wishlist.html">
                                                <i
														class="icon anm anm-heart-l"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- end product button -->
                                </div>
                                <!-- end product image -->
                                <!--start product details -->
                                <div class="product-details text-center">
                                    <!-- product name -->
                                    <div class="product-name">
                                        <a href="#">Edna Dress</a>
                                    </div>
                                    <!-- End product name -->
                                    <!-- product price -->
                                    <div class="product-price">
                                        <span class="old-price">$500.00</span>
                                        <span class="price">$600.00</span>
                                    </div>
                                    <!-- End product price -->
                                    
                                    <div class="product-review">
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star-o"></i>
                                        <i class="font-13 fa fa-star-o"></i>
                                    </div>
                                    <!-- Variant -->
                                    <ul class="swatches">
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant1.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant2.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant3.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant4.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant5.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant6.jpg"
													alt="image" /></li>
                                    </ul>
                                    <!-- End Variant -->
                                </div>
                                <!-- End product details -->
                            </div>
                            <div class="col-12 item">
                                <!-- start product image -->
                                <div class="product-image">
                                    <!-- start product image -->
                                    <a href="#">
                                        <!-- image -->
                                        <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image2.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image2.jpg"
												alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image2-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image2-1.jpg"
												alt="image" title="product">
                                        <!-- End hover image -->
                                    </a>
                                    <!-- end product image -->
        
                                    <!-- Start product button -->
                                    <form class="variants add"
												action="#" onclick="window.location.href='cart.html'"
												method="post">
                                        <button
													class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                    </form>
                                    <div class="button-set">
                                        <a href="#" title="Quick View"
													class="quick-view" tabindex="0">
                                            <i
													class="icon anm anm-search-plus-r"></i>
                                        </a>
                                        <div class="wishlist-btn">
                                            <a
														class="wishlist add-to-wishlist" href="wishlist.html">
                                                <i
														class="icon anm anm-heart-l"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- end product button -->
                                </div>
                                <!-- end product image -->
        
                                <!--start product details -->
                                <div class="product-details text-center">
                                    <!-- product name -->
                                    <div class="product-name">
                                        <a href="#">Elastic Waist Dress</a>
                                    </div>
                                    <!-- End product name -->
                                    <!-- product price -->
                                    <div class="product-price">
                                        <span class="price">$748.00</span>
                                    </div>
                                    <!-- End product price -->
                                    <div class="product-review">
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                    </div>
                                    <!-- Variant -->
                                    <ul class="swatches">
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant2-1.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant2-2.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant2-3.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant2-4.jpg"
													alt="image" /></li>
                                    </ul>
                                    <!-- End Variant -->
                                </div>
                                <!-- End product details -->
                            </div>
                            <div class="col-12 item">
                                <!-- start product image -->
                                <div class="product-image">
                                    <!-- start product image -->
                                    <a href="#">
                                        <!-- image -->
                                        <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image3.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image3.jpg"
												alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image3-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image3-1.jpg"
												alt="image" title="product">
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div
													class="product-labels rectangular">
												<span class="lbl pr-label2">Hot</span>
											</div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
        
                                    <!-- Start product button -->
                                    <form class="variants add"
												action="#" onclick="window.location.href='cart.html'"
												method="post">
                                        <button
													class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                    </form>
                                    <div class="button-set">
                                        <a href="#" title="Quick View"
													class="quick-view" tabindex="0">
                                            <i
													class="icon anm anm-search-plus-r"></i>
                                        </a>
                                        <div class="wishlist-btn">
                                            <a
														class="wishlist add-to-wishlist" href="wishlist.html">
                                                <i
														class="icon anm anm-heart-l"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- end product button -->
                                </div>
                                <!-- end product image -->
        
                                <!--start product details -->
                                <div class="product-details text-center">
                                    <!-- product name -->
                                    <div class="product-name">
                                        <a href="#">3/4 Sleeve Kimono Dress</a>
                                    </div>
                                    <!-- End product name -->
                                    <!-- product price -->
                                    <div class="product-price">
                                        <span class="price">$550.00</span>
                                    </div>
                                    <!-- End product price -->
                                    
                                    <div class="product-review">
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star-o"></i>
                                    </div>
                                    <!-- Variant -->
                                    <ul class="swatches">
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant3-1.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant3-2.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant3-3.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant3-4.jpg"
													alt="image" /></li>
                                    </ul>
                                    <!-- End Variant -->
                                </div>
                                <!-- End product details -->
                            </div>
                            <div class="col-12 item">
                                <!-- start product image -->
                                <div class="product-image">
                                    <!-- start product image -->
                                    <a href="#">
                                        <!-- image -->
                                        <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image4.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image4.jpg"
												alt="image" title="product" />
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image4-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image4-1.jpg"
												alt="image" title="product" />
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div class="product-labels">
												<span class="lbl on-sale">Sale</span>
											</div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
        
                                    <!-- Start product button -->
                                    <form class="variants add"
												action="#" onclick="window.location.href='cart.html'"
												method="post">
                                        <button
													class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                    </form>
                                    <div class="button-set">
                                        <a href="#" title="Quick View"
													class="quick-view" tabindex="0">
                                            <i
													class="icon anm anm-search-plus-r"></i>
                                        </a>
                                        <div class="wishlist-btn">
                                            <a
														class="wishlist add-to-wishlist" href="wishlist.html">
                                                <i
														class="icon anm anm-heart-l"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- end product button -->
                                </div>
                                <!-- end product image -->
        
                                <!--start product details -->
                                <div class="product-details text-center">
                                    <!-- product name -->
                                    <div class="product-name">
                                        <a href="#">Cape Dress</a>
                                    </div>
                                    <!-- End product name -->
                                    <!-- product price -->
                                    <div class="product-price">
                                        <span class="old-price">$900.00</span>
                                        <span class="price">$788.00</span>
                                    </div>
                                    <!-- End product price -->
                                    
                                    <div class="product-review">
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star-o"></i>
                                        <i class="font-13 fa fa-star-o"></i>
                                    </div>
                                    <!-- Variant -->
                                    <ul class="swatches">
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant4-1.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant4-2.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant4-3.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant4-4.jpg"
													alt="image" /></li>
                                    </ul>
                                    <!-- End Variant -->
                                </div>
                                <!-- End product details -->
                            </div>
                            <div class="col-12 item">
                                <!-- start product image -->
                                <div class="product-image">
                                    <!-- start product image -->
                                    <a href="#">
                                        <!-- image -->
                                        <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image5.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image5.jpg"
												alt="image" title="product" />
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image5-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image5-1.jpg"
												alt="image" title="product" />
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div class="product-labels">
												<span class="lbl on-sale">Sale</span>
											</div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
        
                                    <!-- Start product button -->
                                    <form class="variants add"
												action="#" onclick="window.location.href='cart.html'"
												method="post">
                                        <button
													class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                    </form>
                                    <div class="button-set">
                                        <a href="#" title="Quick View"
													class="quick-view" tabindex="0">
                                            <i
													class="icon anm anm-search-plus-r"></i>
                                        </a>
                                        <div class="wishlist-btn">
                                            <a
														class="wishlist add-to-wishlist" href="wishlist.html">
                                                <i
														class="icon anm anm-heart-l"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- end product button -->
                                </div>
                                <!-- end product image -->
        
                                <!--start product details -->
                                <div class="product-details text-center">
                                    <!-- product name -->
                                    <div class="product-name">
                                        <a href="#">Paper Dress</a>
                                    </div>
                                    <!-- End product name -->
                                    <!-- product price -->
                                    <div class="product-price">
                                        <span class="price">$550.00</span>
                                    </div>
                                    <!-- End product price -->
                                    
                                    <div class="product-review">
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                    </div>
                                    <!-- Variant -->
                                    <ul class="swatches">
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant3-1.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant3-2.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant3-3.jpg"
													alt="image" /></li>
                                        <li
													class="swatch medium rounded"><img
													src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/variant3-4.jpg"
													alt="image" /></li>
                                    </ul>
                                    <!-- End Variant -->
                                </div>
                                <!-- End product details -->
                            </div>
                            <div class="col-12 item">
                                                <!-- start product image -->
                                                <div
											class="product-image">
                                                    <!-- start product image -->
                                                    <a href="#">
                                                        <!-- image -->
                                                        <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image6.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image6.jpg"
												alt="image" title="product">
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image6-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image6-1.jpg"
												alt="image" title="product">
                                                        <!-- End hover image -->
                                                        <!-- product label -->
                                                        <div
													class="product-labels rectangular">
												<span class="lbl on-sale">-16%</span> <span
														class="lbl pr-label1">new</span>
											</div>
                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->
            
                                                    <!-- Start product button -->
                                                    <form
												class="variants add" action="#"
												onclick="window.location.href='cart.html'" method="post">
                                                        <button
													class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <div
												class="button-set">
                                                        <a href="#"
													title="Quick View" class="quick-view" tabindex="0">
                                                            <i
													class="icon anm anm-search-plus-r"></i>
                                                        </a>
                                                        <div
													class="wishlist-btn">
                                                            <a
														class="wishlist add-to-wishlist" href="wishlist.html">
                                                                <i
														class="icon anm anm-heart-l"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->
            
                                                <!--start product details -->
                                                <div
											class="product-details text-center">
                                                    <!-- product name -->
                                                    <div
												class="product-name">
                                                        <a href="#">Zipper Jacket</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div
												class="product-price">
                                                        <span
													class="price">$788.00</span>
                                                    </div>
                                                    <!-- End product price -->
                                                    
                                                    <div
												class="product-review">
                                                        <i
													class="font-13 fa fa-star"></i>
                                                        <i
													class="font-13 fa fa-star"></i>
                                                        <i
													class="font-13 fa fa-star"></i>
                                                        <i
													class="font-13 fa fa-star-o"></i>
                                                        <i
													class="font-13 fa fa-star-o"></i>
                                                    </div>
                                                </div>
                                                <!-- End product details -->
                                            </div>
                            <div class="col-12 item">
                                                <!-- start product image -->
                                                <div
											class="product-image">
                                                    <!-- start product image -->
                                                    <a href="#">
                                                        <!-- image -->
                                                        <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image7.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image7.jpg"
												alt="image" title="product">
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image7-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image7-1.jpg"
												alt="image" title="product">
                                                        <!-- End hover image -->
                                                    </a>
                                                    <!-- end product image -->
            
                                                    <!-- Start product button -->
                                                    <form
												class="variants add" action="#"
												onclick="window.location.href='cart.html'" method="post">
                                                        <button
													class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <div
												class="button-set">
                                                        <a href="#"
													title="Quick View" class="quick-view" tabindex="0">
                                                            <i
													class="icon anm anm-search-plus-r"></i>
                                                        </a>
                                                        <div
													class="wishlist-btn">
                                                            <a
														class="wishlist add-to-wishlist" href="wishlist.html">
                                                                <i
														class="icon anm anm-heart-l"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->
            
                                                <!--start product details -->
                                                <div
											class="product-details text-center">
                                                    <!-- product name -->
                                                    <div
												class="product-name">
                                                        <a href="#">Zipper Jacket</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div
												class="product-price">
                                                        <span
													class="price">$748.00</span>
                                                    </div>
                                                    <!-- End product price -->
                                                    <div
												class="product-review">
                                                        <i
													class="font-13 fa fa-star"></i>
                                                        <i
													class="font-13 fa fa-star"></i>
                                                        <i
													class="font-13 fa fa-star"></i>
                                                        <i
													class="font-13 fa fa-star"></i>
                                                        <i
													class="font-13 fa fa-star"></i>
                                                    </div>
                                                </div>
                                                <!-- End product details -->
                                            </div>
                        </div>
                        </div>
                    <!--End Related Product Slider-->
                    
                    <!--Recently Product Slider-->
                    <div class="related-product grid-products">
                            <header class="section-header">
                                <h2
										class="section-header__title text-center h2">
									<span>Recently Viewed Product</span>
								</h2>
                                <p class="sub-heading">You can manage this section from store admin as describe in above section</p>
                            </header>
                            <div class="productPageSlider">
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image6.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image6.jpg"
												alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image6-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image6-1.jpg"
												alt="image" title="product">
                                            <!-- End hover image -->
                                            <!-- product label -->
                                            <div
													class="product-labels rectangular">
												<span class="lbl on-sale">-16%</span> <span
														class="lbl pr-label1">new</span>
											</div>
                                            <!-- End product label -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div
											class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Zipper Jacket</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image7.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image7.jpg"
												alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image7-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image7-1.jpg"
												alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div
											class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Zipper Jacket</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image8.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image8.jpg"
												alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image8-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image8-1.jpg"
												alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>

                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div
											class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Workers Shirt Jacket</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image9.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image9.jpg"
												alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image9-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image9-1.jpg"
												alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div
											class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Watercolor Sport Jacket in Brown/Blue</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image10.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image10.jpg"
												alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image10-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image10-1.jpg"
												alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div
											class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Washed Wool Blazer</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image13.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image13.jpg"
												alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image13-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image13-1.jpg"
												alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>

                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div
											class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Ashton Necklace</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image14.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image14.jpg"
												alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image14-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image14-1.jpg"
												alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div
											class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Ara Ring</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img
												class="primary blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image15.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image15.jpg"
												alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img
												class="hover blur-up lazyload"
												data-src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image15-1.jpg"
												src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image15-1.jpg"
												alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div
											class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Ara Ring</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                            </div>
                        </div>
                    <!--End Recently Product Slider-->
                    </div>
                <!--#ProductSection-product-template-->
            </div>
            <!--MainContent-->
                         
                </div>
                <!--End Main Content-->
            </div>
        </div>
        
	</jsp:attribute>
</mt:layout_user>