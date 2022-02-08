<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:layout_user title="checkout">
	<jsp:attribute name="content">
	<%-- <script>
	$(document).ready(function(){
		
		$('#buttonPay').click(function(){
			Swal.fire({
				  title: 'Do you want to pay?',
				  showCancelButton: true,
				  confirmButtonText: 'Pay',
				}).then((result) => {
				  /* Read more about isConfirmed, isDenied below */
				  if (result.isConfirmed) {
					  $('#form1').submit();
					  $('#form2').submit();
				  }
				})
		});
		
	});
	
	</script> --%>
	<!--Page Title-->
    	<div class="page section-header text-center">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width">Checkout</h1></div>
      		</div>
		</div>
        <!--End Page Title-->
        
        <div class="container">
 			<s:form method="post" modelAttribute="invoice"
							action="${pageContext.request.contextPath }/cart/checkout" id="form1">
            <div class="row billing-fields">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 sm-margin-30px-bottom">
                    <div class="create-ac-content bg-light-gray padding-20px-all">
                   
                            <fieldset>
                                <h2 class="login-title mb-3">Billing details</h2>
                                <div class="row">
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                        <label for="input-firstname">Full name <span class="required-f">*</span></label>
                                        <s:input path="fullName"
											placeholder="" id="input-firstname" name="fullName" autofocus="" type="text" required="required"/>
                                    </div>
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                        <label for="input-email">E-Mail <span class="required-f">*</span></label>
                                        <s:input path="email"
											placeholder="" id="input-email" name="email" autofocus="" type="text" required="required"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                        <label for="input-address-1">Address <span class="required-f">*</span></label>
                                        <s:input path="address"
											placeholder="" id="input-address-1" name="address" autofocus="" type="text" required="required"/>
                                    </div>
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                        <label for="input-telephone">Telephone <span class="required-f">*</span></label>
                                        <s:input path="phone"
											placeholder="" id="input-telephone" name="phone" autofocus="" type="number" required="required"/>
                                    </div>
                                </div>
                            </fieldset>
						 <s:input type="hidden" path="total" name="total" autofocus="" value="${cart.product.priceStart + (cart.product.priceStart * 10/100) }"/>
                           <!--  <fieldset>
                                <div class="row">
                                    <div class="form-group col-md-12 col-lg-12 col-xl-12">
                                        <label for="input-company">Order Notes <span class="required-f">*</span></label>
                                        <textarea class="form-control resize-both" rows="3"></textarea>
                                    </div>
                                </div>
                            </fieldset> -->
                            

                            <hr/>
                             <div class="payment-accordion">
	                                    <div id="accordion" class="payment-section">
	                                        <div class="card mb-2">
	                                            <div class="card-header">
	                                                <a class="card-link" data-toggle="collapse" href="#collapseOne">Direct Bank Transfer </a>
	                                            </div>
	                                            <div id="collapseOne" class="collapse" data-parent="#accordion">
	                                                <div class="card-body">
	                                                    <p class="no-margin font-15">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won't be shipped until the funds have cleared in our account.</p>
	                                                </div>
	                                            </div>
	                                        </div>
	                                        <div class="card mb-2">
	                                            <div class="card-header">
	                                                <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">Cheque Payment</a>
	                                            </div>
	                                            <div id="collapseTwo" class="collapse" data-parent="#accordion">
	                                                <div class="card-body">
	                                                    <p class="no-margin font-15">Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
	                                                </div>
	                                            </div>
	                                        </div>
	                                        <div class="card margin-15px-bottom border-radius-none">
	                                            <div class="card-header">
	                                                <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree"> PayPal </a>
	                                            </div>
	                                            <div id="collapseThree" class="collapse" data-parent="#accordion">
	                                                <div class="card-body">
	                                                    <p class="no-margin font-15">Pay via PayPal; you can pay with your credit card if you don't have a PayPal account.</p>
	                                                </div>
	                                            </div>
	                                        </div>
	                                        <div class="card mb-2">
	                                            <div class="card-header">
	                                                <a class="collapsed card-link" data-toggle="collapse" href="#collapseFour"> Payment Information </a>
	                                            </div>
	                                            <div id="collapseFour" class="collapse" data-parent="#accordion">
	                                                <div class="card-body">
	                                                    <fieldset>
	                                                        <div class="row">
	                                                            <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
	                                                                <label for="input-cardname">Name on Card <span class="required-f">*</span></label>
	                                                                <input name="cardname" value="" placeholder="Card Name" id="input-cardname" class="form-control" type="text">
	                                                            </div>
	                                                            <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
	                                                                <label for="input-country">Credit Card Type <span class="required-f">*</span></label>
	                                                                <select name="country_id" class="form-control">
	                                                                    <option value=""> --- Please Select --- </option>
                                                                    <option value="1">American Express</option>
                                                                    <option value="2">Visa Card</option>
                                                                    <option value="3">Master Card</option>
                                                                    <option value="4">Discover Card</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                                                <label for="input-cardno">Credit Card Number  <span class="required-f">*</span></label>
                                                                <input name="cardno" value="" placeholder="Credit Card Number" id="input-cardno" class="form-control" type="text">
                                                            </div>
                                                            <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                                                <label for="input-cvv">CVV Code <span class="required-f">*</span></label>
                                                                <input name="cvv" value="" placeholder="Card Verification Number" id="input-cvv" class="form-control" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                                                <label>Expiration Date <span class="required-f">*</span></label>
                                                                <input type="date" name="exdate" class="form-control">
                                                            </div>
                                                            <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                                                <img class="padding-25px-top xs-padding-5px-top" src="assets/images/payment-img.jpg" alt="card" title="card" />
                                                            </div>
                                                        </div>
                                                    </fieldset>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    </div>
                </div>

                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="your-order-payment">
                        <div class="your-order">
                            <h2 class="order-title mb-4">Your Order</h2>

                            <div class="table-responsive-sm order-table"> 
                            <form method="post" action="${posturl }" id="form2">
                            		<input type="hidden" name="upload" value="1" /> 
										<input type="hidden" name="return" value="${returnurl }" /> 
										<input type="hidden" name="cmd" value="_cart" /> 
										<input type="hidden" name="business" value="${business }" />
                                <table class="bg-white table table-bordered table-hover text-center">
                                    <thead>
                                        <tr>
                                            <th class="text-left">Product Name</th>
                                            <th>Price</th>
                                            <th>Brand</th>
                                            <th>Qty</th>
                                            <th>Subtotal</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                        <tr>
	                                            <td class="text-left">${cart.product.name }</td>
	                                            <td>$${cart.product.priceStart }</td>
	                                            <td>${cart.product.brand.name }</td>
	                                            <td>1
	                                             	<input type="hidden" name="item_number_1" value="${cart.product.id }">
													<input type="hidden" name="item_name_1" value="${cart.product.name }">
													<input type="hidden" name="amount_1" value="1">
													<input type="hidden" name="quantity_1" value="${cart.product.priceStart + (cart.product.priceStart * 10/100) }">
	                                            </td>
	                                            <td>$${cart.product.priceStart }</td>
	                                        </tr>

                                    </tbody>
                                    <tfoot class="font-weight-600">
                                        <tr>
                                            <td colspan="4" class="text-right">VAT 10% </td>
                                            <td>$${cart.product.priceStart * 10/100 }</td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" class="text-right">Total</td>
                                            <td>$${cart.product.priceStart + (cart.product.priceStart * 10/100) }</td>
                                        </tr>
                                    </tfoot>
                                </table>
                                 </form>
                            </div>
                        </div>
							<hr/>
                            <div class="order-button-payment">
                            	<button class="btn" value="Place order" type="submit" id="buttonPay">Place order</button>
                            </div>
                        </div>
                    </div>
                </div>
               </s:form>
            </div>
            

	
		
	</jsp:attribute>
</mt:layout_user>