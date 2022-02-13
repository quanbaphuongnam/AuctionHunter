<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<mt:layout_user title="myinvoice">
	<jsp:attribute name="content">
		 	<!--Page Title-->
    	<div class="page section-header text-center">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width">My Invoice</h1></div>
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
                                    	<th class="product-name text-center alt-font">ID</th>
                                        <th class="product-price text-center alt-font">Username</th>
                                        <th class="product-name alt-font">Product</th>
                                        <th class="product-price text-center alt-font">FullName</th>
                                        <th class="stock-status text-center alt-font">Email</th>
                                        <th class="stock-status text-center alt-font">Phone</th>
                                        <th class="stock-status text-center alt-font">Address</th>
                                        <th class="stock-status text-center alt-font">Payment</th>
                                        <th class="stock-status text-center alt-font">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <c:forEach var="Invoice" items="${Invoices }">
                                    <tr>
                                    	<td class="product-remove text-center">${Invoice.id } </td>
                                        <td class="product-thumbnail text-center">${Invoice.account.username }                                          
                                        </td>
                                        <td class="product-name">${Invoice.product.name } </td>
                                        <td class="product-price text-center">${Invoice.fullName } </td>
                                        <td class="product-price text-center">${Invoice.email } </td>
                                        <td class="product-price text-center">${Invoice.phone } </td>
                                        <td class="product-price text-center">${Invoice.address} </td>
                                        <td class="product-price text-center">${Invoice.payment } </td>
                                        
                                        <td class="stock text-center">
                                           ${Invoice.total } 
                                        </td>
                                    </tr>
                                    
                                   </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </form>                   
               	</div>
            </div>
        </div>
        
    		        <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
       
	</jsp:attribute>
</mt:layout_user>