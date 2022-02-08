<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:layout_user title="myproduct">
	<jsp:attribute name="content">
		<!--Page Title-->
    	<div class="page section-header text-center">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width">My Product</h1></div>
      		</div>
		</div>
        <!--End Page Title-->
        <div class="container">
        	<div class="row">
                <div class="col-12 col-sm-12 col-md-8 col-lg-12 main-col">
                <div  class=" col-lg-3 cart__footer ">
                    <a href="${pageContext.request.contextPath }/product/productpost">
                         <input type="submit" name="checkout" id="cartCheckout" class="btn btn--small-wide checkout" value="Post new" >
                      </a>
                    </div>
                             <div style="float: right"><a href="${pageContext.request.contextPath }/account/myproduct"> <button type="submit" name="update" class="btn--link cart-update"><i class="fa fa-refresh"></i> Update</button></a></div>    
                	<form action="#" method="post" class="cart style2">
                		<table>
                            <thead class="cart__row cart__header">
                                <tr>
                                	<th class="text-right">Product Photo</th>
                                    <th class="text-right">ProductName</th>                                   
                                     <th class="text-right">PriceStart</th>
                                      <th class="text-right">PriceStep</th>
                                      <th class="text-right">StartDate</th>
                                       <th class="text-right">EndDate</th>
                                         <th class="text-right">Created</th>
                                         <th class="text-right">Status</th>
                                    <th class="text-right">&nbsp;</th>
                                </tr>
                            </thead>
                    		<tbody>
                    		  <c:forEach var="AllProduct" items="${AllProducts }">
                                <tr class="cart__row border-bottom line1 cart-flex border-top">
                                 	<td class="text-center">
                                 		<c:forEach var="productPhoto" items="${AllProduct.productPhotos }" end="0">
                                        <img class="cart__image" width="200" height="150" src="${pageContext.request.contextPath }/assets/uploads/${productPhoto.name }" alt="${AllProduct.name } ">
                                    </c:forEach>
                                    </td>
                                    
                                    <td class="text-center">${AllProduct.name }                                     
                                    </td>
                                    <td class="text-center">   ${AllProduct.priceStart } $                                    
                                    </td>
                                      <td class="text-center">
                                       ${AllProduct.priceStep } $
                                    </td>
                                    <td class="text-center"><fmt:formatDate var="day"
								value="${AllProduct.startDate }"
								pattern="dd/MM/yyyy"/>
				                       ${day }</td>
                                    <td class="text-center"><fmt:formatDate var="day2"
								value="${AllProduct.endDate }"
								pattern="dd/MM/yyyy"/>
				                       ${day2 }</td>
                                  
                                   <td class="text-center"><fmt:formatDate var="day3"
								value="${AllProduct.created }"
								pattern="dd/MM/yyyy"/>
				                       ${day3 }</td> 
				                   <td class="text-center">        
				                     <c:choose>
											<c:when test="${AllProduct.status  == 0}">
												  <span class="badge badge-secondary">unapproved</span>
											</c:when>
											<c:when test="${AllProduct.status  == 1}">
											
												  <c:choose>
													<c:when test="${AllProduct.startDate  >= dateNow }">
														<span class="badge badge-secondary">not yet begun</span>
													</c:when>
													<c:when test="${AllProduct.startDate  <= dateNow && dateNow <= AllProduct.endDate}">
														<span class="badge badge-success">happening</span>
													</c:when>
													<c:when test="${AllProduct.endDate <= dateNow }">
														<span class="badge badge-dark">finished</span>
													</c:when>
													<c:otherwise>
													</c:otherwise>
												</c:choose>     
													  	
											</c:when>
											
											
											<c:otherwise>
											 	
												       <span class="badge badge-danger">refused </span> 
												     
											</c:otherwise>
										</c:choose>                           
                                    </td>
                                    <td class="text-center small--hide"><a href="${pageContext.request.contextPath }/product/productdetail/${AllProduct.id }" class="btn btn--secondary cart__remove" title="Remove tem"><i class="icon fa fa-eye"></i></a></td>
                                </tr>
                               </c:forEach>
                            </tbody>
                    </table>
                    <hr>
                    </form>                   
               	</div>
                
            </div>
        </div>
       <br><br><br><br><br><br><br><br><br><br>
	</jsp:attribute>
</mt:layout_user>