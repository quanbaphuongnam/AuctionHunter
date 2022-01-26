<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:layout_user title="myauctions">
	<jsp:attribute name="content">
		<!--Page Title-->
    <div class="page section-header text-center">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width">My Auction (Danh sach dang dau gia)</h1></div>
      		</div>
		</div>
        <!--End Page Title-->
        
        <div class="container">
        	<div class="row">
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                	<form action="#">
                        <div class="wishlist-table table-content table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                    	<th class="product-name text-center alt-font">IMG</th>
                                        <th class="product-name alt-font">Name pro</th>  
                                         <th class="product-price text-center alt-font">End day</th>
                                         <th class="product-price text-center alt-font"> Price cao nhát</th>
                                        <th class="stock-status text-center alt-font">Status</th>
                                           
                                        <th class="product-subtotal text-center alt-font">Add to Cart</th>
                                         <th class="action">&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="historyAuction" items="${historyAuctions }">
                                    <tr>
	                                    <td class="cart__image-wrapper cart-flex-item">
	                                 		<c:forEach var="productPhoto" items="${historyAuction.product.productPhotos }" end="0">
	                                        <img class="cart__image" src="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }" alt="">
	                                    </c:forEach>
	                                    </td>
                                    	<td class="product-name">${historyAuction.product.name }</td>
                                    	<td class="product-name"><fmt:formatDate var="day" value="${historyAuction.product.endDate }" pattern="dd/MM/yyyy"/>${day }</td>
                                    	<td class="product-price text-center" valign="middle">${historyAuction.priceBid } </td>
                                        <td class="ext-center">&nbsp;
                                       		<%-- <c:choose>
												<c:when test="${historyAuction.product.startDate  > dateNow >  historyAuction.product.endDate}">
												  <span class="badge badge-secondary">happening</span>
												</c:when>
												<c:otherwise>
											 	
												       <span class="badge badge-danger">finished </span> 
												     
												</c:otherwise>
											</c:choose>  --%>
										</td>
                                       <!--  <td class="product-subtotal text-center"><button type="button" class="btn btn-small">Button ???</button></td> -->
                                        <td class="text-center small--hide"><a href="${pageContext.request.contextPath }/product/productdetail/${historyAuction.product.id }" class="btn btn--secondary cart__remove" title="Remove tem"><i class="icon fa fa-eye"></i></a></td>
                                    </tr>
                                  </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </form>                   
               	</div>
            </div>
        </div>
        
   
    <!--End Body Content-->
    
    <!--Footer-->
   
        
       
		
       
	</jsp:attribute>
</mt:layout_user>