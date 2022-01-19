<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:layout_user title="productpost">
	<jsp:attribute name="content">
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<style>
.center-block {
    float: none;
    margin-left: auto;
    margin-right: auto;
}

.input-group .icon-addon .form-control {
    border-radius: 0;
}

.icon-addon {
    position: relative;
    color: #555;
    display: block;
}

.icon-addon:after,
.icon-addon:before {
    display: table;
    content: " ";
}

.icon-addon:after {
    clear: both;
}

.icon-addon.addon-md .glyphicon,
.icon-addon .glyphicon, 
.icon-addon.addon-md .fa,
.icon-addon .fa {
    position: absolute;
    z-index: 2;
    left: 10px;
    font-size: 14px;
    width: 20px;
    margin-left: -2.5px;
    text-align: center;
    padding: 10px 0;
    top: 1px
}

.icon-addon.addon-lg .form-control {
    line-height: 1.33;
    height: 46px;
    font-size: 18px;
    padding: 10px 16px 10px 40px;
}

.icon-addon.addon-sm .form-control {
    height: 30px;
    padding: 5px 10px 5px 28px;
    font-size: 12px;
    line-height: 1.5;
}

.icon-addon.addon-lg .fa,
.icon-addon.addon-lg .glyphicon {
    font-size: 18px;
    margin-left: 0;
    left: 11px;
    top: 4px;
}

.icon-addon.addon-md .form-control,
.icon-addon .form-control {
    padding-left: 30px;
    float: left;
    font-weight: normal;
}

.icon-addon.addon-sm .fa,
.icon-addon.addon-sm .glyphicon {
    margin-left: 0;
    font-size: 12px;
    left: 5px;
    top: -1px
}

.icon-addon .form-control:focus + .glyphicon,
.icon-addon:hover .glyphicon,
.icon-addon .form-control:focus + .fa,
.icon-addon:hover .fa {
    color: #2580db;
}</style>

	<div class="page section-header text-center">
			<div class="page-title">
        		<div class="wrapper"><h1 class="page-width">Post Product</h1></div>
      		</div>
		</div>
        <!--End Page Title-->
        
        <div class="container">
        	<div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 mb-3">
                    <div class="customer-box returning-customer">
                        <h3><i class="icon anm anm-user-al"></i> Returning customer? <a href="#customer-login" id="customer" class="text-white text-decoration-underline" data-toggle="collapse">Click here to login</a></h3>
                        <div id="customer-login" class="collapse customer-content">
                            <div class="customer-info">
                                <p class="coupon-text">If you have shopped with us before, please enter your details in the boxes below. If you are a new customer, please proceed to the Billing &amp; Shipping section.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row billing-fields">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 sm-margin-30px-bottom">
                    <div class="create-ac-content bg-light-gray padding-20px-all">
                      <h3 class="login-title mb-3">Please fill in the product information</h3>
                      <s:form method="post" modelAttribute="product"
			enctype="multipart/form-data"
			action="${pageContext.request.contextPath }/product/productpost">
                            <fieldset>
                                <div class="row">
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                       <label for="input-firstname">Product Name <span  class="required-f">*</span></label>
                                        <s:input path="name"  type="text" required="required" /> 
                                        
                                    </div>
                                    <div class="form-group col-md-2 col-lg-2 col-xl-2 required">
                                        <label for="input-lastname">Price Start <span class="required-f">*</span></label>
                                       
                                         <div class="icon-addon addon-lg">
						                    <s:input path="priceStart" type="number"  class="form-control" required="required"/>
						                    <label  for="email" class="glyphicon glyphicon-usd" rel="tooltip" title="email"></label>
						                </div>
                                    </div>
                                       <div class="form-group col-md-2 col-lg-2 col-xl-2 required">
                                        <label for="input-lastname">Price Step <span class="required-f">*</span></label>
                                        <div class="icon-addon addon-lg">
						                    <s:input path="priceStep" type="number" class="form-control" required="required"/>
						                    <label for="email" class="glyphicon glyphicon-usd" rel="tooltip" title="email"></label>
						                </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                         
                       					 <label for="filter-date">Start Date <span  class="required-f">*</span></label>
                        				<s:input path="startDate"  name="filter-date"  id="filter-date" required="required" />
               
                                    </div>
                                      <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                        <label for="filter-date">End Date <span  class="required-f">*</span></label>
                        				<s:input path="endDate"  name="filter-date"  id="filter-date" required="required"/>
                                    </div>
                                </div>
                               
                            </fieldset>

                            <fieldset>
                                
                                <div class="row">
                                    
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                        <label for="input-country">Category  <span class="required-f">*</span></label>
                                        <select name="country_id">
                                            <option value=""> --- Please Select --- </option>
                                            <option value="244">Giay </option>
                                            <option value="1">Dep </option>
                                            <option value="2">...</option>
                                          
                                        </select>
                                    </div>
                               
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                        <label for="input-zone">Brand / Trademark <span class="required-f">*</span></label>
                                        <select name="zone_id" >
                                            <option value=""> --- Please Select --- </option>
                                            <option value="3513">Luon vui tuoi</option>
                                            <option value="3514">Cha neo</option>
                                       
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="row">
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                        <label for="input-firstname">Choose images <span  class="required-f">*</span></label>
                                        
                                       <%--  <s:input path="email" name="firstname" value=""  type="file"  accept="image/*" multiple/> --%>
                                    </div>
                                     
                                </div>
                                
                            </fieldset>
                             <fieldset>
                                <div class="row">
                                    <div class="form-group col-md-12 col-lg-12 col-xl-12">
                                        <label  for="input-company">Description <span class="required-f">*</span></label>
                                        <s:textarea path="description" class="form-control resize-both" rows="5" required="required"/>
                                    </div>
                                </div>
                                
                            </fieldset>
                              <fieldset>
                                <div class="row">
                                     <div class="form-group col-md-12 col-lg-12 col-xl-12">
                                        <label class="form-check-label padding-15px-left">
                                            <input type="checkbox" class="form-check-input" value="" required="required"/>&ensp;  &emsp;<strong>I have read and agreed the regulations </strong>
                                        </label>
                                  </div>
                                </div>
                                 <div class="row">
                                	 <div class="order-button-payment">
                                	 &emsp;<button class="btn" value="Place order" type="submit">Submit</button>
                            		</div>
                            	 </div>
                            </fieldset>
                           

                        </s:form>
                    </div>
                </div>

                    </div>
                </div>
         
        
	 <script>
            /*jslint browser:true*/
            /*global jQuery, document*/

            jQuery(document).ready(function () {
                'use strict';

                jQuery('#filter-date, #search-from-date, #search-to-date').datetimepicker();
            });
        </script>
	
        
	</jsp:attribute>
</mt:layout_user>