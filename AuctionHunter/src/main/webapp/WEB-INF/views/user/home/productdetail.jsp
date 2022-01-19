<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:layout_user title="productdetail">
	<jsp:attribute name="content">

	<script>
	var refreshIntervalId = setInterval(function(){
		var value = $('#proid').val();
		var idAcc2 = ${idAcc};
		$.ajax({
			type: 'GET',
			url: '${pageContext.request.contextPath }/ajax/findWinnerAjax',
			data: {
				product_id: value
			},
			success: function(winnerAuctions){
				var priceStep = parseInt(${product.priceStep});
				var priceStart =  parseInt(${product.priceStart});
				var result = '';
				var result2 = '';
				var result3 = '';
				var result4 = '';
				for(var i = 0;i < 1; i++)
					{
					result += '<span>' + winnerAuctions[i].priceBid + '</span>';
					result4 +=   winnerAuctions[i].accid ;
					result2 += '<span>' + winnerAuctions[i].accUsername  + '</span>';
					result3 +=   winnerAuctions[i].priceBid ;
					}
				$('#winnerAuctions').html(result);
				$('#winnerAuctions2').html(result2);

					if(parseInt(result3) >= document.getElementById("priceBid").value){
						document.getElementById("priceBid").value = parseInt(result3) + priceStep;
						document.getElementById("buttonBid").disabled = true;
					}else if(parseInt(result3) < document.getElementById("priceBid").value && result4 != idAcc2){
						document.getElementById("buttonBid").disabled = false;
					}else if(parseInt(result3) < document.getElementById("priceBid").value && result4 == idAcc2){
						document.getElementById("buttonBid").disabled = true;
					}
					
				
			}
		});
				$.ajax({
					
					type: 'GET',
					url: '${pageContext.request.contextPath }/ajax/findWinnerAjax',
					data: {
						product_id: value
					},
					success: function(historyAuctions){
						var result = '';
						for(var i = 0;i < historyAuctions.length; i++)
							{
							 var dt = new Date(historyAuctions[i].dateBid); 
							
							
							result += '<tr>';
							result += '<td>' + historyAuctions[i].accUsername  + '</td>';
							result += '<td>' + historyAuctions[i].priceBid + '</td>';
							result += '<td>' +  
							    (dt.getMonth()+1).toString().padStart(2, '0')+'/'+
						    dt.getDate().toString().padStart(2, '0')+'/'+
						    dt.getFullYear().toString().padStart(4, '0') + ' '+
						    dt.getHours().toString().padStart(2, '0')+':'+
						    dt.getMinutes().toString().padStart(2, '0')+':'+
						    dt.getSeconds().toString().padStart(2, '0')  + '</td>';
							result += '</tr>';
							}
						$('#tableHistoryAuction tbody').html(result);
					}
				});
				
				$.ajax({
					
					type: 'GET',
					url: '${pageContext.request.contextPath }/ajax/findProductAjax',
					data: {
						product_id: value
					},
					success: function(result){
						if(result == "invalid")
						{
							
							document.getElementById("buttonBid").hidden = true;
							document.getElementById("alertInfo").value = "Has over the auction time !";
							document.getElementById("alertInfo").hidden = false;
							clearInterval(refreshIntervalId);
						}else if(result != null){
							$('[data-countdown]').each(function () {
								var $this = $(this),
									finalDate = result;
									
								$this.countdown(finalDate, function (event) {
									$this.html(event.strftime('<span class="ht-count days"><span class="count-inner"><span class="time-count">%-D</span> <span>Days</span></span></span> <span class="ht-count hour"><span class="count-inner"><span class="time-count">%-H</span> <span>HR</span></span></span> <span class="ht-count minutes"><span class="count-inner"><span class="time-count">%M</span> <span>Min</span></span></span> <span class="ht-count second"><span class="count-inner"><span class="time-count">%S</span> <span>Sc</span></span></span>'));
								});
							});
						
						}
						
					}
				});
	}, 1000)
	$(document).ready(function(){
		$('#buttonBid').click(function(){
			var priceBid = document.getElementById("priceBid").value;
			var idAcc = ${idAcc};
			var idPro = ${idPro};
			
			$.ajax({
				type: 'GET',
				url: '${pageContext.request.contextPath }/ajax/buttonBid',
				data:{
					priceBid: parseInt(priceBid),
					idAcc: idAcc,
					idPro: idPro
				},
				success: function(data){
					//$('#resultpriceBid').html(data);
					Swal.fire({
					  position: 'top',
					  icon: 'success',
					  title: 'You have just stained the price',
					  showConfirmButton: false,
					  timer: 1000
					})
				}
			});
		});
		
		
	});
	
	</script>
	
	<button id="proid" value="${idPro}" >${idPro}</button>
	<button id="accid" value="${idAcc}" >${idAcc}</button>
	<button id="resultpriceBid"  ></button>
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
            	
                <!--End Sidebar-->
                <!--Main Content-->
         
                	
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
											<c:forEach var="productPhoto" items="${product.productPhotos }">
	                                            <a data-image="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }" 
	                                            data-zoom-image="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }" 
	                                            class="slick-slide slick-cloned" data-slick-index="6" 
	                                            aria-hidden="true" tabindex="-1">
	                                                <img class="blur-up lazyload" 
	                                                src="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }" alt="" />
	                                            </a>                                         
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div
											class="zoompro-wrap product-zoom-right pl-20">
                                         <div class="zoompro-span">
                                            <img class="blur-up lazyload zoompro" 
                                            data-zoom-image="${pageContext.request.contextPath }/assets/uploads/${namePhoto }" alt="" 
                                            src="${pageContext.request.contextPath }/assets/uploads/${namePhoto }" />
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
											class="product-single__title">${product.name}</h1>
                                        <div
											class="product-nav clearfix">					
                                            <a href="#" class="next"
												title="Next"><i class="fa fa-angle-right"
												aria-hidden="true"></i></a>
                                        </div>
                                        <div class="prInfoRow">

												
												 <div class="product-stock"> by <span class="instock ">${product.account.username }</span> <span class="outstock hide">Unavailable</span> </div>
												
												</div>
												    <div class="product-info">
                                      					<p class="product-type"> <a href="http://annimexweb.com/collections/types?q=Women%27s" title="Women's">Trademark</a><span class="lbl"> NIKE</span> &emsp; | &emsp;
                                      					<a href="http://annimexweb.com/collections/notifications" title="">Category</a>   <c:forEach var="categoryProduct" items="${product.categoryProducts }"><span class="lbl"> ${categoryProduct.category.name }</span> </c:forEach></p>
                                      					
                                    				</div>                                      	
												
												<br>
												<div class="product-single__description rte">
												    <ul>
												        <li>START  &emsp;&nbsp;<fmt:formatDate var="startDate" value="${product.startDate}" pattern="dd/MM/yyyy HH:mm"/>${startDate}
												        </li>
												        <li >END  &emsp; &emsp;<fmt:formatDate var="endDate" value="${product.endDate}" pattern="dd/MM/yyyy HH:mm"/>${endDate}
												        </li>
												    </ul>
												</div>
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
													id="ProductPrice-product-template" >$ <span
														class="money" id="winnerAuctions" >${product.priceStart}</span>
														</span>
                                            </span>
                                              </p>
                                              </div> 
                                                <span>
                                            
                                            CURRENT WINNER:  </span>
                                                <div
											id="quantity_message" >
												<span class="items" id="winnerAuctions2"></span>
											</div>
                                                 
                                      
                                        
                                           <!--  end winner -->  
                                    
                                        </div>
                                   
                                    
                                 
                                   
                                        <p class="infolinks"> <a
											href="#productInquiry" class="emaillink btn">Price step: ${product.priceStep}</a>
															
										</p>
                                        <!-- Product Action -->
                                        <div
										class="product-action clearfix">
                                            <div
											class="product-form__item--quantity">
                                                <div class="wrapQtyBtn">
                                                    <div
													class="qtyField">
													<%-- <c:choose>
														<c:when
															test="${pageContext.request.userPrincipal.name != null}">
															<li><a
																href="${pageContext.request.contextPath }/account/logout"
																class="site-nav">Logout</a></li>
														</c:when>
														<c:otherwise>
														
														</c:otherwise>
													</c:choose> --%>
                                                        <a
														class="qtyBtn minus" href="javascript:void(0);"><i
														class="fa anm anm-minus-r" aria-hidden="true" ></i></a>
														
                                                        <input
														style="width: 80px;" type="number" step="${product.priceStep}" 
														 id="priceBid" value="${product.priceStart}"
														class="product-form__input qty items"  >
															<input name="quantity" value="${product.priceStep}"
														class="product-form__input qty2 items " hidden>
														
                                                        <a
														class="qtyBtn plus" href="javascript:void(0);"><i
														class="fa anm anm-plus-r" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                                
                                            </div> 
                                            <c:choose>
											<c:when
												test="${pageContext.request.userPrincipal.name != null}">
												
                                            <c:choose>
		                                            <c:when test="${pageContext.request.userPrincipal.name == product.account.username}">
															  <div
													class="product-form__item--submit">
								
	                                               
	                                            </div>
		                                                
												</c:when>
												<c:otherwise>
													 <div
													class="product-form__item--submit">
									
		                                                <button
														style="margin-top: 2px" type="button" name="add"
														class="btn product-form__cart-submit" id="buttonBid">
		                                                    Place Bid
		                                                </button>
		                                            </div>
												</c:otherwise>
                                            </c:choose>  
											</c:when>
											<c:otherwise>
											 <a href="${pageContext.request.contextPath }/account/login">
											 <div
											class="product-form__item--submit">
                                                <button
												style="margin-top: 2px" type="button" name="add"
												class="btn product-form__cart-submit" >
                                                   <span>You must be logged in</span>
                                                </button>
                                            </div>
                                            </a>
											</c:otherwise>
										</c:choose>                               
                                           <input style="color:red;
                                             border-color: red;" type="text" id="alertInfo"disabled="disabled" hidden="true"></input>
                                             
                                       <div id="timeEnd"><div
											class="saleTime product-countdown"
											data-countdown="${product.endDate}" id="timeNew"></div></div>        <!-- countdown start -->
                                    
                                    <!-- countdown end -->
                                           
                                        </div>
                                        <!-- End Product Action -->
                                   
                                     <div
										class="product-single__description rte">
                                        <ul>
                                            <li>When auction you must comply with our <a href="#">policy</a></li>
                                          
                                        </ul>
                                    </div>
                                    <div class="display-table shareRow">
                                             <div class="tab-content">
                                <h3>History Bid</h3>
                             
                                <div
												style="overflow: auto; height: 100px;">
                                <table id="tableHistoryAuction">
                                	<thead>
									 <tr>
                                      <th>User</th>
                                      <th>Amount</th>
                                      <th>Time</th>
                                    </tr>
									</thead>
                                  <tbody>
                                     
                                    <%-- <c:forEach var="historyAuction"
															items="${historyAuctions }"> --%>
                                   <tr>
                                      <td></td>
                                      <td></td> 
                                      <td></td>
                                    </tr>
                                 <%--   </c:forEach> --%>
                                  </tbody>
                                </table>
                          </div>                  
                                        </div>
                                  
                                </div>
                        </div>
                    </div>
                    <!--End-product-single-->
                 <hr>
                    <!--Product Tabs-->
                    
                    <!--End Product Tabs-->
                    <!--Related Product Slider-->
                    <div class="related-product grid-products">
                        <header class="section-header">
                            <h2
										class="section-header__title text-center h2">
									<span>Description</span>
								</h2>
                               <div>
                                <div>
                                    
                                    <h3>Sed ut perspiciatis unde omnis iste natus error sit voluptatem</h3>
                                    <p>${product.description}</p>
                                  
                                </div>
                            </div>
                        </header>
  
                        <hr>
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