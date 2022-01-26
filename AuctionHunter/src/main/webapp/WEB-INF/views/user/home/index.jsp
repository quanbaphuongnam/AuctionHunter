<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<mt:layout_user title="home">
	<jsp:attribute name="content">

		<!--Collection Banner-->
    	<div class="collection-header">
			<div class="collection-hero">
        		<div class="collection-hero__image">
					<img class="blur-up lazyload"
						data-src="${pageContext.request.contextPath }/resources/user/assets/images/color-gray-background.jpg"
						src="${pageContext.request.contextPath }/resources/user/assets/images/color-gray-background.jpg"
						alt="Women" title="Women" />
				</div>
        		<div class="collection-hero__title-wrapper">
					<h1 class="collection-hero__title page-width">Welcome to Auction Hunter</h1>
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
                                <c:forEach var="category" items="${categorys }">
                                    <li class="lvl-1"><a href="${pageContext.request.contextPath }/home/category/${category.id }"
										class="site-nav">${category.name }</a></li>
								</c:forEach>
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
                            <form action="" method="get" id="formAmount"
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
                        <!--Brand-->
                        <div
							class="sidebar_widget filterBox filter-widget">
                            <div class="widget-title">
								<h2>Brands</h2>
							</div>
                            <ul>
                                <c:forEach var="brand" items="${brands }">
                                    <li class="lvl-1"><a href="${pageContext.request.contextPath }/home/brand/${brand.id }"
										class="site-nav">${brand.name }</a></li>
								</c:forEach>
                            </ul>
                        </div>
                        <!--End Brand-->
                        <!--Popular Products-->
						<div class="sidebar_widget">
                        	<div class="widget-title">
								<h2>Popular Products</h2>
							</div>
							<div class="widget-content">
                                <div class="list list-sidebar-products">
                                  <div class="grid">
                                    <div class="grid__item">
                                      <div class="mini-list-item">
                                        <div class="mini-view_image">
                                            <a
														class="grid-view-item__link"
														href="${pageContext.request.contextPath }/product/productdetail">
                                                <img
														class="grid-view-item__image"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/mini-product-img.jpg"
														alt="" />
                                            </a>
                                        </div>
                                        <div class="details"> <a
														class="grid-view-item__title"
														href="${pageContext.request.contextPath }/product/productdetail">Cena Skirt</a>
                                          <div
														class="grid-view-item__meta">
														<span class="product-price__price"><span
															class="money">$173.60</span></span>
													</div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="grid__item">
                                      <div class="mini-list-item">
                                        <div class="mini-view_image"> <a
														class="grid-view-item__link"
														href="${pageContext.request.contextPath }/product/productdetail"><img
														class="grid-view-item__image"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/mini-product-img1.jpg"
														alt="" /></a> </div>
                                        <div class="details"> <a
														class="grid-view-item__title"
														href="${pageContext.request.contextPath }/product/productdetail">Block Button Up</a>
                                          <div
														class="grid-view-item__meta">
														<span class="product-price__price"><span
															class="money">$378.00</span></span>
													</div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="grid__item">
                                      <div class="mini-list-item">
                                        <div class="mini-view_image"> <a
														class="grid-view-item__link"
														href="${pageContext.request.contextPath }/product/productdetail"><img
														class="grid-view-item__image"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/mini-product-img2.jpg"
														alt="" /></a> </div>
                                        <div class="details"> <a
														class="grid-view-item__title"
														href="${pageContext.request.contextPath }/product/productdetail">Balda Button Pant</a>
                                          <div
														class="grid-view-item__meta">
														<span class="product-price__price"><span
															class="money">$278.60</span></span>
													</div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="grid__item">
                                      <div class="mini-list-item">
                                        <div class="mini-view_image"> <a
														class="grid-view-item__link"
														href="${pageContext.request.contextPath }/product/productdetail"><img
														class="grid-view-item__image"
														src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/mini-product-img3.jpg"
														alt="" /></a> </div>
                                        <div class="details"> <a
														class="grid-view-item__title"
														href="${pageContext.request.contextPath }/product/productdetail">Border Dress in Black/Silver</a>
                                          <div
														class="grid-view-item__meta">
														<span class="product-price__price"><span
															class="money">$228.00</span></span>
													</div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                          	</div>
						</div>
                        <!--End Popular Products-->
                        <!--Banner-->
                        <div class="sidebar_widget static-banner">
                        	<img
								src="${pageContext.request.contextPath }/resources/user/assets/images/side-banner-2.jpg"
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
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag $100 - $400">$100 - $400</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag $400 - $600">$400 - $600</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag $600 - $800">$600 - $800</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Above $800">Above $800</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Allen Vela">Allen Vela</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Black">Black</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Blue">Blue</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Cantitate">Cantitate</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Famiza">Famiza</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Gray">Gray</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Green">Green</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Hot">Hot</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag jean shop">jean shop</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag jesse kamm">jesse kamm</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag L">L</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Lardini">Lardini</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag lareida">lareida</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Lirisla">Lirisla</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag M">M</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag mini-dress">mini-dress</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Monark">Monark</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Navy">Navy</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag new">new</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag new arrivals">new arrivals</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag Orange">Orange</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
										title="Show products matching tag oxford">oxford</a></li>
                              <li><a
										href="${pageContext.request.contextPath }/product/productdetail"
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
               
                            <div  class=" col-lg-3 cart__footer ">
									     <a href="${pageContext.request.contextPath }/product/productpost">
									    
									         <input type="submit" name="checkout" id="cartCheckout" class="btn btn--small-wide checkout" value="Post new" >
									     </a>
									   </div>
									    <br>
                 <div class="card">
                            <div class="card-body">
                                <div class="custom-tab">
									
                                    <nav>
                                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                            <a class="nav-item nav-link active" id="custom-nav-home-tab" data-toggle="tab" href="#custom-nav-home" role="tab" aria-controls="custom-nav-home" aria-selected="true">Happenning</a>
                                            <a class="nav-item nav-link" id="custom-nav-profile-tab" data-toggle="tab" href="#custom-nav-profile" role="tab" aria-controls="custom-nav-profile" aria-selected="false">Hasn't yet started</a>

                                        </div>
                                    </nav>
                                    <div class="tab-content pl-3 pt-2" id="nav-tabContent">
                                        <div class="tab-pane fade show active" id="custom-nav-home" role="tabpanel" aria-labelledby="custom-nav-home-tab">
                                            
                                            	<div class="category-description">
								                         </div>
								                   
								                	<div class="productList product-load-more">
								                    	<!--Toolbar-->
								                        <button type="button"
															class="btn btn-filter d-block d-md-none d-lg-none"> Product Filters</button>
								                    	<div class="toolbar">
								                        	<div class="filters-toolbar-wrapper">
								                            	<div class="row">
								                                	<div
																		class="col-4 col-md-4 col-lg-4 filters-toolbar__item collection-view-as d-flex justify-content-start align-items-center">
								                                    	<a href="shop-left-sidebar.html"
																			title="Grid View" class="change-view change-view--active">
								                                        	<img
																			src="${pageContext.request.contextPath }/resources/user/assets/images/grid.jpg"
																			alt="Grid" />
								                                        </a>
								                                        <a href="shop-listview.html"
																			title="List View" class="change-view">
								                                        	<img
																			src="${pageContext.request.contextPath }/resources/user/assets/images/list.jpg"
																			alt="List" />
								                                        </a>
								                                    </div>
								                                    <div
																		class="col-4 col-md-4 col-lg-4 text-center filters-toolbar__item filters-toolbar__item--count d-flex justify-content-center align-items-center">
								                                    	<span
																			class="filters-toolbar__product-count">Showing: 22</span>
								                                    </div>
								                                    <div
																		class="col-4 col-md-4 col-lg-4 text-right">
								                                    	<div class="filters-toolbar__item">
								                                      		<label for="SortBy"
																				class="hidden">Sort</label>
								                                      		<select name="SortBy"
																				id="SortBy"
																				class="filters-toolbar__input filters-toolbar__input--sort">
								                                                <option
																					value="title-ascending" selected="selected">Sort</option>
								                                                <option>Best Selling</option>
								                                                <option>Alphabetically, A-Z</option>
								                                                <option>Alphabetically, Z-A</option>
								                                                <option>Price, low to high</option>
								                                                <option>Price, high to low</option>
								                                                <option>Date, new to old</option>
								                                                <option>Date, old to new</option>
								                                      		</select>
								                                      		<input
																				class="collection-header__default-sort" type="hidden"
																				value="manual">
								                                        </div>
								                                    </div>
								
								                                </div>
								                            </div>
								                        </div>
								                        <!--End Toolbar-->
								                        <div class="grid-products grid--view-items">
								                            <div class="row">
								  <!----------------------------------Product----------------------------------->
								  					<c:forEach var="listProduct" items="${listProducts }">
								  				
								                                <div
																		class="col-6 col-sm-6 col-md-4 col-lg-3 item box-inner">
																		<div id="tv">
								                                    <!-- start product image -->
								                                    <div class="product-image"
																				style="height: 200px">
								                                        <!-- start product image -->
								                                        <a
								
																			href="${pageContext.request.contextPath }/product/productdetail/${listProduct.id }">
								
																				
								                                            <!-- image -->
								                                            <c:forEach
																						var="productPhoto" items="${listProduct.productPhotos }">
								                                            <img
								
																			class="primary blur-up lazyload"
																			data-src="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }"
																			alt="image" title="product">
								
																						
								
																		
								                                            <!-- End image -->
								                                            <!-- Hover image -->
								                                            <img
								
																			class="hover blur-up lazyload"
																			data-src="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }"
																			src="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }"
																			alt="img"> 
								
																							
								
								                                           
								                                           	</c:forEach>
								                                           	
								                   
								                                           	
								                                           
								                                            <!-- End product label -->
								                                        </a>
								                                        <!-- end product image -->
								                                        
								                                        <!-- countdown start -->
								                                        <div class="saleTime desktop"
																					data-countdown="${listProduct.endDate }"></div>
								                                        <!-- countdown end -->
								    
								                                        <!-- Start product button -->
								
								                                        <form  class="variants add"
																			action="${pageContext.request.contextPath }/product/productdetail/${listProduct.id }" onclick="${pageContext.request.contextPath }/product/productdetail/${listProduct.id }"
																			method="get">
								                                            <button
																				class="btn btn-addto-cart" type="submit">Auction now</button>
								                                        </form>
								                                        
								                                        <!-- end product button -->
								                                    </div>
								                                    <!-- end product image -->
								    
								                                    <!--start product details -->
								                                    <div
																				class="product-details text-center">
								                                        <!-- product name -->
								                                        <div style="height: 85px"
																					class="product-name">
								                                            <a
																						href="${pageContext.request.contextPath }/product/productdetail/${listProduct.id }">${listProduct.name }</a>
																				
								                                        </div>
								                                       <br> 	
								                                           <ul class="product-tags">
								                              <li><a
																						href="${pageContext.request.contextPath }/product/productdetail/${listProduct.id }">${listProduct.account.username }</a></li>
								                              <li><a href="${pageContext.request.contextPath }/home/brand/${listProduct.brand.id }">${listProduct.brand.name }</a></li>		
								                            
								                            </ul>
								                                        
								                                        <!-- End product name -->
								                                        <!-- product price -->
								                                        <div class="">
								                                           <a
																				href="${pageContext.request.contextPath }/product/productdetail/${listProduct.id }">
								  												<button class="custom-btn btn-16">
																					<img
																				height="25" width="30" alt=""
																				src="${pageContext.request.contextPath }/resources/user/assets/images/auction_icon_product.png">&emsp;&emsp;  $ <span
																						class="money" id="priceBid" >${listProduct.priceStart }</span> <br>
								
																					
																					<br>
								
																				</button>
																				  </a>
								</div>
								                                          
								                                        
								                                    </div>
								                                    <!-- End product details -->
								                                    <!-- countdown start -->
								                                    <div class="timermobile">
																		<div class="saleTime desktop" data-countdown="2022/09/20"></div>
																	</div>
								                                    <!-- countdown end -->
								                             
								                                </div>
								                                
								                                          
								                                        
								                                   
								                                    <!-- End product details -->
								                                    <!-- countdown start -->
								                                   
								                                    <!-- countdown end -->
								                         </div>
								                      </c:forEach>
								  
								                            <!-- End product  -->
								                                </div>
								                               
								                              
								                             
								                                
								                        </div>
								                    </div>
								                    <div class="infinitpaginOuter">
								                        <div class="infinitpagin">	
								                            <a
																href="${pageContext.request.contextPath }/product/productdetail"
																class="btn loadMore">Load More</a>
								                        </div>
								                    </div>
								          
                                        </div>
                                        <div class="tab-pane fade" id="custom-nav-profile" role="tabpanel" aria-labelledby="custom-nav-profile-tab">
                                            
                                            	<div class="category-description">
								                         </div>
								                   
								                	<div class="productList product-load-more1">
								                    	<!--Toolbar-->
								                        <button type="button"
															class="btn btn-filter d-block d-md-none d-lg-none"> Product Filters</button>
								                    	<div class="toolbar">
								                        	<div class="filters-toolbar-wrapper">
								                            	<div class="row">
								                                	<div
																		class="col-4 col-md-4 col-lg-4 filters-toolbar__item collection-view-as d-flex justify-content-start align-items-center">
								                                    	<a href="shop-left-sidebar.html"
																			title="Grid View" class="change-view change-view--active">
								                                        	<img
																			src="${pageContext.request.contextPath }/resources/user/assets/images/grid.jpg"
																			alt="Grid" />
								                                        </a>
								                                        <a href="shop-listview.html"
																			title="List View" class="change-view">
								                                        	<img
																			src="${pageContext.request.contextPath }/resources/user/assets/images/list.jpg"
																			alt="List" />
								                                        </a>
								                                    </div>
								                                    <div
																		class="col-4 col-md-4 col-lg-4 text-center filters-toolbar__item filters-toolbar__item--count d-flex justify-content-center align-items-center">
								                                    	<span
																			class="filters-toolbar__product-count">Showing: 22</span>
								                                    </div>
								                                    <div
																		class="col-4 col-md-4 col-lg-4 text-right">
								                                    	<div class="filters-toolbar__item">
								                                      		<label for="SortBy"
																				class="hidden">Sort</label>
								                                      		<select name="SortBy"
																				id="SortBy"
																				class="filters-toolbar__input filters-toolbar__input--sort">
								                                                <option
																					value="title-ascending" selected="selected">Sort</option>
								                                                <option>Best Selling</option>
								                                                <option>Alphabetically, A-Z</option>
								                                                <option>Alphabetically, Z-A</option>
								                                                <option>Price, low to high</option>
								                                                <option>Price, high to low</option>
								                                                <option>Date, new to old</option>
								                                                <option>Date, old to new</option>
								                                      		</select>
								                                      		<input
																				class="collection-header__default-sort" type="hidden"
																				value="manual">
								                                        </div>
								                                    </div>
								
								                                </div>
								                            </div>
								                        </div>
								                        <!--End Toolbar-->
								                        <div class="grid-products grid--view-items">
								                            <div class="row">
								  <!----------------------------------Product----------------------------------->
								  					<c:forEach var="listProduct" items="${listProductHSs }">
								  				
								                                <div
																		class="col-6 col-sm-6 col-md-4 col-lg-3 item box-inner">
																		<div id="tv">
								                                    <!-- start product image -->
								                                    <div class="product-image"
																				style="height: 200px">
								                                        <!-- start product image -->
								                                        <a
								
																			href="${pageContext.request.contextPath }/product/productdetail/${listProduct.id }">
								
																				
								                                            <!-- image -->
								                                            <c:forEach
																						var="productPhoto" items="${listProduct.productPhotos }">
								                                            <img
								
																			class="primary blur-up lazyload"
																			data-src="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }"
																			alt="image" title="product">
								
																						
								
																		
								                                            <!-- End image -->
								                                            <!-- Hover image -->
								                                            <img
								
																			class="hover blur-up lazyload"
																			data-src="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }"
																			src="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }"
																			alt="img"> 
								
																							
								
								                                           
								                                           	</c:forEach>
								                                           	
								                   
								                                           	
								                                           
								                                            <!-- End product label -->
								                                        </a>
								                                        <!-- end product image -->
								                                        
								                                        <!-- countdown start -->
								                                        <div class="saleTime desktop"
																					data-countdown="${listProduct.startDate }"></div>
								                                        <!-- countdown end -->
								    
								                                        <!-- Start product button -->
								
								                                        <form  class="variants add"
																			action="${pageContext.request.contextPath }/product/productdetail/${listProduct.id }" onclick="${pageContext.request.contextPath }/product/productdetail/${listProduct.id }"
																			method="get">
								                                            <button
																				class="btn btn-addto-cart" type="submit">Auction now</button>
								                                        </form>
								                                        
								                                        <!-- end product button -->
								                                    </div>
								                                    <!-- end product image -->
								    
								                                    <!--start product details -->
								                                    <div
																				class="product-details text-center">
								                                        <!-- product name -->
								                                        <div style="height: 85px"
																					class="product-name">
								                                            <a
																						href="${pageContext.request.contextPath }/product/productdetail">${listProduct.name }</a>
																				
								                                        </div>
								                                       <br> 	
								                                           <ul class="product-tags">
								                              <li><a
																						href="${pageContext.request.contextPath }/product/productdetail${listProduct.id }">${listProduct.account.username }</a></li>
								                              <li><a href="${pageContext.request.contextPath }/home/brand/${listProduct.brand.id }">${listProduct.brand.name }</a></li>	
								                            
								                            </ul>
								                                        
								                                        <!-- End product name -->
								                                        <!-- product price -->
								                                        <div class="">
								                                           <a
																				href="${pageContext.request.contextPath }/product/productdetail/${listProduct.id }">
								  												<button class="custom-btn btn-16">
																					<img
																				height="25" width="30" alt=""
																				src="${pageContext.request.contextPath }/resources/user/assets/images/auction_icon_product.png">&emsp;&emsp;  $ <span
																						class="money" id="priceBid" >${listProduct.priceStart }</span> <br>
								
																					
																					<br>
								
																				</button>
																				  </a>
								</div>
								                                          
								                                        
								                                    </div>
								                                    <!-- End product details -->
								                                    <!-- countdown start -->
								                                    <div class="timermobile">
																		<div class="saleTime desktop" data-countdown="2022/09/20"></div>
																	</div>
								                                    <!-- countdown end -->
								                             
								                                </div>
								                                
								                                          
								                                        
								                                   
								                                    <!-- End product details -->
								                                    <!-- countdown start -->
								                                   
								                                    <!-- countdown end -->
								                         </div>
								                      </c:forEach>
								  
								                            <!-- End product  -->
								                                </div>
								                               
								                              
								                             
								                                
								                        </div>
								                    </div>
								                    <div class="infinitpaginOuter">
								                        <div class="infinitpagin">	
								                            <a
																href="${pageContext.request.contextPath }/product/productdetail"
																class="btn loadMore1">Load More</a>
								                        </div>
								                    </div>
                                        </div>
                                   </div>

                                </div>
                            </div>
                        </div>
              
                </div>
                <!--End Main Content-->
            </div>
        </div>
        
	
	</jsp:attribute>
</mt:layout_user>