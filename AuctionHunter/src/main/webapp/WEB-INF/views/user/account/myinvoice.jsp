<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<mt:layout_user title="myinvoice">
	<jsp:attribute name="content">
		 	<!--Page Title-->
    	<div class="page section-header text-center">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width">My Invoice (Don Mua/ban)</h1></div>
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
                                    	<th class="product-name text-center alt-font">Images</th>
                                        <th class="product-price text-center alt-font">Name</th>
                                        <th class="product-name alt-font">Product</th>
                                        <th class="product-price text-center alt-font">Unit Price</th>
                                        <th class="stock-status text-center alt-font">Stock Status</th>
                                        <th class="product-subtotal text-center alt-font">Add to Cart</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    	<td class="product-remove text-center" valign="middle"><a href="#"><i class="icon icon anm anm-times-l"></i></a></td>
                                        <td class="product-thumbnail text-center">
                                            <a href="#"><img src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image8.jpg" alt="" title="" /></a>
                                        </td>
                                        <td class="product-name"><h4 class="no-margin"><a href="#">Minerva Dress black</a></h4></td>
                                        <td class="product-price text-center"><span class="amount">$165.00</span></td>
                                        <td class="stock text-center">
                                            <span class="in-stock">in stock</span>
                                        </td>
                                        <td class="product-subtotal text-center"><button type="button" class="btn btn-small">Add To Cart</button></td>
                                    </tr>
                                    <tr>
                                    	<td class="product-remove text-center" valign="middle"><a href="#"><i class="icon icon anm anm-times-l"></i></a></td>
                                        <td class="product-thumbnail text-center">
                                            <a href="#"><img src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image4.jpg" alt="" title="" /></a>
                                        </td>
                                        <td class="product-name"><h4 class="no-margin"><a href="#">Sueded Cotton Pant in Khaki</a></h4></td>
                                        <td class="product-price text-center"><span class="amount">$150.00</span></td>
                                        <td class="stock text-center">
                                            <span class="out-stock">Out Of stock</span>
                                        </td>
                                        <td class="product-subtotal text-center"><button type="button" class="btn btn-small">Add To Cart</button></td>
                                    </tr>
                                    <tr>
                                    	<td class="product-remove text-center" valign="middle"><a href="#"><i class="icon icon anm anm-times-l"></i></a></td>
                                        <td class="product-thumbnail text-center">
                                            <a href="#"><img src="${pageContext.request.contextPath }/resources/user/assets/images/product-images/product-image5.jpg" alt="" title="" /></a>
                                        </td>
                                        <td class="product-name"><h4 class="no-margin"><a href="#">Woven Solid Midi Shirt Dress</a></h4></td>
                                        <td class="product-price text-center"><span class="amount">$150.00</span></td>
                                        <td class="stock text-center">
                                            <span class="in-stock">in stock</span>
                                        </td>
                                        <td class="product-subtotal text-center"><button type="button" class="btn btn-small">Add To Cart</button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>                   
               	</div>
            </div>
        </div>
        
    </div>
    <!--End Body Content-->
    
    <!--Footer-->
   
        
        	<div class="container">
     			<!--Footer Links-->
            	<div class="footer-top">
                	<div class="row">
                    	<div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
                        	<h4 class="h4">Quick Shop</h4>
                            <ul>
                            	<li><a href="#">Women</a></li>
                                <li><a href="#">Men</a></li>
                                <li><a href="#">Kids</a></li>
                                <li><a href="#">Sportswear</a></li>
                                <li><a href="#">Sale</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
                        	<h4 class="h4">Informations</h4>
                            <ul>
                            	<li><a href="#">About us</a></li>
                                <li><a href="#">Careers</a></li>
                                <li><a href="#">Privacy policy</a></li>
                                <li><a href="#">Terms &amp; condition</a></li>
                                <li><a href="#">My Account</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
                        	<h4 class="h4">Customer Services</h4>
                            <ul>
                            	<li><a href="#">Request Personal Data</a></li>
                                <li><a href="#">FAQ's</a></li>
                                <li><a href="#">Contact Us</a></li>
                                <li><a href="#">Orders and Returns</a></li>
                                <li><a href="#">Support Center</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 contact-box">
                        	<h4 class="h4">Contact Us</h4>
                            <ul class="addressFooter">
                            	<li><i class="icon anm anm-map-marker-al"></i><p>55 Gallaxy Enque,<br>2568 steet, 23568 NY</p></li>
                                <li class="phone"><i class="icon anm anm-phone-s"></i><p>(440) 000 000 0000</p></li>
                                <li class="email"><i class="icon anm anm-envelope-l"></i><p>sales@yousite.com</p></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--End Footer Links-->
                <hr>
                <div class="footer-bottom">
                	<div class="row">
                    	<!--Footer Copyright-->
	                	<div class="col-12 col-sm-12 col-md-6 col-lg-6 order-1 order-md-0 order-lg-0 order-sm-1 copyright text-sm-center text-md-left text-lg-left"><span></span> <a href="templateshub.net">Templates Hub</a></div>
                        <!--End Footer Copyright-->
                        <!--Footer Payment Icon-->
                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 order-0 order-md-1 order-lg-1 order-sm-0 payment-icons text-right text-md-center">
                        	<ul class="payment-icons list--inline">
                        		<li><i class="icon fa fa-cc-visa" aria-hidden="true"></i></li>
                                <li><i class="icon fa fa-cc-mastercard" aria-hidden="true"></i></li>
                                <li><i class="icon fa fa-cc-discover" aria-hidden="true"></i></li>
                                <li><i class="icon fa fa-cc-paypal" aria-hidden="true"></i></li>
                                <li><i class="icon fa fa-cc-amex" aria-hidden="true"></i></li>
                                <li><i class="icon fa fa-credit-card" aria-hidden="true"></i></li>
                            </ul>
                        </div>
                        <!--End Footer Payment Icon-->
                    </div>
                </div>
            </div>
		
       
	</jsp:attribute>
</mt:layout_user>