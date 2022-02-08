<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<mt:layout_user title="cart">
	<jsp:attribute name="content">
<!-- 	<script>
		window.Carts = {
			urlCart : '${pageContext.request.contextPath}/ajax/cart',
			intervalLoop : null,
			init : function() {
				Carts.intervalLoop = setInterval(Carts.run, 1000);
			},
			run : function() {
				var urlRequestCart = Carts.urlCart;
				$.get(urlRequestCart).then(function(result) {
					Carts.getListCart(result);
				});
			},
			getListCart : function(carts) {
				
			}
		}
		$(document).ready(Carts.init);
	</script> -->
		<!--Page Title-->
    	<div class="page section-header text-center">
			<div class="page-title">
        		<div class="wrapper">
					<h1 class="page-width">My Cart</h1>
				</div>
      		</div>
		</div>
        <!--End Page Title-->
        
        <div class="container" style="margin-bottom: 140px">
        	<div class="row">
                <div
					class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                	<div class="alert alert-success text-uppercase"
						role="alert">
						<i class="icon anm anm-truck-l icon-large"></i> &nbsp;<strong>Congratulations!</strong> You've got free shipping!
					</div>
                	<form action="#" method="post" class="cart style2">
                		<table>
                            <thead class="cart__row cart__header">
                                <tr>
                                    <th colspan="2" class="text-center">Product</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-right">Created</th>
                                    <th class="action">&nbsp;</th>
                                </tr>
                            </thead>
                    		<tbody>
                    			<c:forEach var="cart" items="${carts }">
	                                <tr
										class="cart__row border-bottom line1 cart-flex border-top">
	                                    <td
											class="cart__image-wrapper cart-flex-item">
											<c:forEach var="productPhoto"
												items="${cart.product.productPhotos }" end="0">
								                <img class="cart__image"
													src="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }"
													alt="${productPhoto.name }">
								           	</c:forEach>
	                                    </td>
	                                    <td
											class="cart__meta small--text-left cart-flex-item">
	                                        <div
												class="list-view-item__title">
	                                            ${cart.product.name }
	                                        </div>
	                                        
	                                        <div class="cart__meta-text">
	                                            Category: ${cart.product.category.name }<br>Brand: ${cart.product.brand.name }<br>
	                                        </div>
	                                    </td>
	                                    <td
											class="cart__price-wrapper cart-flex-item">
	                                        <span class="money">$${cart.product.priceStart }</span>
	                                    </td>
	                                    <td
											class="cart__update-wrapper cart-flex-item text-right">
	                                        <span class="money">${cart.created }</span>
	                                    </td>
	                                    <c:choose>
											<c:when test="${cart.status == 1}">
												<td class="text-center small--hide"><a
												href="${pageContext.request.contextPath }/cart/checkout/${cart.id }"
												class="btn btn--secondary cart__remove">Check out</a></td></c:when>
											<c:otherwise>
												<td class="text-center small--hide"><h3 style="color: red">Confirm Invoice ...</h3></td>
											</c:otherwise>
										</c:choose>   
	                                </tr>                                
								</c:forEach>
                            </tbody>
                    		<tfoot>
                                <tr>
                                    <td colspan="3" class="text-left"><a
										href="${pageContext.request.contextPath }/home"
										class="btn btn-secondary btn--small cart-continue">Continue shopping</a></td>
                                </tr>
                            </tfoot>
                    </table> 
                    </form>                   
               	</div>
                
                
            </div>
        </div>
		
		
	</jsp:attribute>
</mt:layout_user>