<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:layout_user title="productdetail">
	<jsp:attribute name="content">

	<script>
		window.Auctions = {
			url 		: '${pageContext.request.contextPath}/ajax/findWinnerAjax?product_id=',
			urlPro 		: '${pageContext.request.contextPath}/ajax/findProductAjax?product_id=',
			priceStep 	: ${product.priceStep},
			priceStart 	: ${product.priceStart},
			idAcc2 		: ${idAcc},
			intervalLoop : null,
			init : function(){
				Auctions.intervalLoop = setInterval(Auctions.run, 1000);
			},
			run : function(){
				var value  	   = $('#proid').val().trim();
				var urlRequest = Auctions.url + value;
				var urlRequestPro = Auctions.urlPro + value;
				$.get(urlRequest).then(function(result){
					if(typeof result[0] == "object"){
						Auctions.printWinner(result[0]);
					}
					/* if(result == "invalid") {
						Auctions.endAuction();
					} */
					Auctions.printHistoryBid(result);
				});
				$.get(urlRequestPro).then(function(result){
					
					if(result == "invalidStart") {
						Auctions.notStartAuction();
						
					}else if(result == "invalid") {
						Auctions.endAuction();
					}
					Auctions.setCountDown(result);
				});
			},
			printWinner : function(winner){
				var priceBid 		= parseInt(winner.priceBid);
				var priceBidLocal 	= parseInt($("#priceBid").val().trim());
				var winnerSameId	= winner.accid == Auctions.idAcc2;
			
				$("#winnerAuctions").text(priceBid);
				$('#winnerAuctions2').text(winner.accUsername);

				if(priceBid >= priceBidLocal){
					let priceMin = priceBid + Auctions.priceStep;
					$("#priceBid").val(priceMin);
					$("#priceBid").attr("data-price-min", priceMin);
					$(".qtyBtn.minus").addClass("disabled");
					return;
				}
				if(winnerSameId){
					$("#alertInfo").val("You have to wait for another person to pay a higher price to continue");
					$("#alertInfo").prop("hidden", false);
					$("#buttonBid").prop("hidden", true);
				}else {
					$("#alertInfo").prop("hidden", true);
					$("#buttonBid").prop("hidden", false);
				}
			
			},
			printHistoryBid : function(historyAuctions){
				var $bodyTable = $("#tableHistoryAuctionBody");
				$bodyTable.empty();
				historyAuctions.map(function(history){
					let $tr 		= $("<tr />");
					let $tdUser 	= $("<td />").text(history.accUsername);
					let $tdPrice 	= $("<td />").text(history.priceBid);
					let $tdTimeBid	= $("<td />");
					let timeBid 	= Auctions.getDate(history.dateBid);
					
					timeBid = [timeBid.day, timeBid.month, timeBid.year].join("/") + " " + [timeBid.hour, timeBid.minute, timeBid.second].join(":");
					$tdTimeBid.text(timeBid);
					
					$tr.append($tdUser, $tdPrice, $tdTimeBid);
					$bodyTable.append($tr);
				});
			},
			getDate : function(date = null){
				date = date == null ? new Date : new Date(date);
				return {
					year : date.getFullYear(),
					month : date.getMonth() + 1,
					day : date.getDate(),
					hour : date.getHours(),
					minute : date.getMinutes(),
					second : date.getSeconds()
				}
			},
			notStartAuction : function(){
				$("#alertInfo").prop("hidden", false).val("Auction hasn't started !");
				$("#buttonBid").prop("hidden", true);
				
				Swal.fire({
					  title: 'Auction hasn t started !',
					  showClass: {
					    popup: 'animate__animated animate__fadeInDown'
					  },
					  hideClass: {
					    popup: 'animate__animated animate__fadeOutUp'
					  }
					})
				clearInterval(Auctions.intervalLoop); 
			},
			endAuction : function(){
				$("#alertInfo").prop("hidden", false).val("Auction has ended !");
				$("#buttonBid").prop("hidden", true);
				
				Swal.fire({
					title		: 'Auction has ended !',
					imageUrl	: '${pageContext.request.contextPath }/resources/user/assets/images/iconendauction.jpg',
					imageWidth	: 400,
					imageHeight	: 200,
					footer		: '<a href="${pageContext.request.contextPath }/home/index">Go to another auction</a>'
				});
				clearInterval(Auctions.intervalLoop); 
			},
			setCountDown : function(timeCountdown) {
				$(".product-countdown").countdown("setFinalDate", timeCountdown);
			}
		}
		$(document).ready(Auctions.init);
	</script>
	<script>
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
	
	<style>
		#priceBid::-webkit-inner-spin-button,
		#priceBid::-webkit-outer-spin-button{
			-webkit-appearance: none;
			margin: 0;
		}
		.qtyBtn.minus.disabled{
			cursor: not-allowed;
		    opacity: 0.3;
		    background: #686870;
		}
		
	</style>
	
	<button id="proid" value="${idPro}" hidden="hidden"></button>
	<button id="accid" value="${idAcc}"hidden="hidden" ></button>
	
	<button id="resultpriceBid" hidden="hidden" ></button>
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
                                      					<p class="product-type"> <a  title="Women's">Trademark</a>   <span class="lbl"> ${product.brand.name }</span> &emsp; | &emsp;
                                      					<a  title="">Category</a>   <span class="lbl"> ${product.category.name }</span> </p>
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
                                                	<span> CURRENT WINNER:  </span>
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
                                                        <a
														class="qtyBtn minus" href="javascript:void(0);"><i
														class="fa anm anm-minus-r" aria-hidden="true" ></i></a>
														
                                                        <input
														style="width: 80px;" type="number" readonly step="${product.priceStep}" 
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
															  <div class="product-form__item--submit"></div>       
														</c:when>
														<c:otherwise>
														 		<div class="product-form__item--submit">
			                                                		<button style="margin-top: 2px" type="button" name="add"
																		class="btn product-form__cart-submit" id="buttonBid">Place Bid</button>
			                                            		</div> 
														</c:otherwise>
                                            		</c:choose>  
												</c:when>
												<c:otherwise>
											 		<div class="product-form__item--submit">
											 			<a href="${pageContext.request.contextPath }/account/login">
                                                		<button style="margin-top: 2px" type="button" name="add"
															class="btn product-form__cart-submit" >
                                                   		<span>You must be logged in</span>
                                                		</button>
                                                		</a>
                                            		</div>
												</c:otherwise>
											</c:choose>                               
                                           <input style="color:red;
                                             border-color: red;" type="text" id="alertInfo"disabled="disabled" hidden="true"></input>
                        				<!-- countdown start -->                     
                                       <div class="saleTime product-countdown" data-countdown="${product.endDate}"></div>
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
                                <div style="overflow: auto; height: 100px;">
	                                <table id="tableHistoryAuction">
	                                	<thead>
											 <tr>
		                                      <th>User</th>
		                                      <th>Amount</th>
		                                      <th>Time</th>
		                                    </tr>
										</thead>
	                                  	<tbody id="tableHistoryAuctionBody">
	                                  	</tbody>
	                                </table>
                          			</div>                  
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End-product-single-->
                 <hr>
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