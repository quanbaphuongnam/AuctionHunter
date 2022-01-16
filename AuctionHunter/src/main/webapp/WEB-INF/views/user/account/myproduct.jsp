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
                <div class="col-12 col-sm-12 col-md-8 col-lg-9 main-col">
                	<form action="#" method="post" class="cart style2">
                		<table>
                            <thead class="cart__row cart__header">
                                <tr>
                                    <th >ID</th>
                                    <th class="text-center">ProductName</th>                                   
                                    <th class="text-right">Price</th>
                                     <th class="text-right">PriceStart</th>
                                      <th class="text-right">StartDate</th>
                                       <th class="text-right">EndDate</th>
                                        <th class="text-right">PriceStep</th>
                                         <th class="text-right">Created</th>
                                         
                                        
                                    <th class="action">&nbsp;</th>
                                </tr>
                            </thead>
                    		<tbody>
                    		  <c:forEach var="AllProduct" items="${AllProducts }">
                                <tr class="cart__row border-bottom line1 cart-flex border-top">
                                    <td >${AllProduct.id } </td>
                                    <td class="cart__meta small--text-left cart-flex-item">${AllProduct.name }                                     
                                    </td>
                                    <td class="cart__price-wrapper cart-flex-item">  ${AllProduct.price }$                                    
                                    </td>
                                    <td class="cart__price-wrapper cart-flex-item">   ${AllProduct.priceStart }$                                    
                                    </td>
                                    <td class="cart__price-wrapper cart-flex-item"><fmt:formatDate var="day"
								value="${AllProduct.startDate }"
								pattern="dd/MM/yyyy"/>
				                       ${day }</td>
                                    <td class="cart__price-wrapper cart-flex-item"><fmt:formatDate var="day2"
								value="${AllProduct.endDate }"
								pattern="dd/MM/yyyy"/>
				                       ${day2 }</td>
                                    <td class="cart__price-wrapper cart-flex-item">
                                       ${AllProduct.priceStep }$
                                    </td>
                                   <td class="cart__price-wrapper cart-flex-item"><fmt:formatDate var="day3"
								value="${AllProduct.created }"
								pattern="dd/MM/yyyy"/>
				                       ${day3 }</td>                               
                                  
                                    <td class="text-center small--hide"><a href="#" class="btn btn--secondary cart__remove" title="Remove tem"><i class="icon icon anm anm-times-l"></i></a></td>
                                </tr>
                               </c:forEach>
                            </tbody>
                    		<tfoot>
                                <tr>
                                    <td colspan="3" class="text-left"><a href="http://annimexweb.com/" class="btn--link cart-continue"><i class="icon icon-arrow-circle-left"></i> Continue shopping</a></td>
                                    <td colspan="3" class="text-right"><button type="submit" name="update" class="btn--link cart-update"><i class="fa fa-refresh"></i> Update</button></td>
                                </tr>
                            </tfoot>
                    </table>
                    
                    <div class="currencymsg">We processes all orders in USD. While the content of your cart is currently displayed in USD, the checkout will use USD at the most current exchange rate.</div>
                    <hr>
					
                   
                    </form>                   
               	</div>
                <div class="col-15 col-sm-15 col-md-4 col-lg-3 cart__footer">
                	
                    <div class="solid-border">
                      <div class="row">
                         <input type="submit" name="checkout" id="cartCheckout" class="btn btn--small-wide checkout" value="Post" disabled="disabled">
                
                        
                      </div>
                      <div class="cart__shipping">Shipping &amp; taxes calculated at checkout</div>
                     
                   
                    </div>

                </div>
            </div>
        </div>
		
       
	</jsp:attribute>
</mt:layout_user>