<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:layout_user title="productpost">
	<jsp:attribute name="content">
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
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
}
.drop-zone {
	max-width: 100%;
	height: 140px;
	padding: 10px;
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
	font-family: 'Quicksand', sans-serif;
	font-weight: 500;
	font-size: 20px;
	cursor: pointer;
	color: #cccccc;
	border: 2px dashed #d7d7d7;
	border-radius: 10px;
}
.drop-zone--over {
	border-style: solid;
}
.drop-zone__input {
	display: none;
}
.drop--zone__thumb {
/* 	width: 76px; */
	height: 114px;
	margin-right: 30px;
	border-radius: 10px;
	overflow: hidden;
	background-color: #cccccc;
	background-size: cover;
	position: relative;
	
}
.preview-img {
  max-width: 150px;margin: 0 1em 1em 0;padding: 0.5em;border: 1px solid #ccc; border-radius: 3px;display: inline-block;
}

</style>
<script>
$(document).ready(function($) {
	var today = new Date();
	$("#PostProductForm").validate({
	    rules: {
	    	name: {
		        required: true,
		        minlength: 5
		    },
		    priceStart: {
	            required: true,
	           	min: 5,
	           	max:1000
	        },
	        priceStep: {
	            required: true,
	            max:100
	        },
	        startdate: {
	            required: true,
	            maxDate : today,
	            date : true
	        },
	        enddate: {
	            required: true,
	            maxDate : today,
	            date : true
	        },
	        description: {
	            required: true,
	         	min: 50
	        }
	      
	    },
	    messages: {
	    	name: {
		        required: "Please enter name",
		        minlength: "Product name must be at least 5 characters long"
		    },
		    priceStart: {
	            required: "Please enter a price start",
	           	min: "Min 5",
	           	max: "Max 1000"
	        },
	        priceStep: {
	            required: "Please enter a price step",
	            max: "Max 1000"
	        },
	        startdate: {
	            required: "Please enter start"
	        },
	        enddate: {
	            required: "Please enter end"
	           
	        },
	        description: {
	            required: "Please enter description",
	            minlength: "Product name must be at least 50 characters long"
	        }
	   
	    },
	     errorPlacement: function(error, element) 
		{
	    	 if ( element.is(":radio") ) 
	         {
	             error.appendTo( element.parents('.form-group') );
	         }
	         else 
	         { // This is the default behavior 
	             error.insertAfter( element );
	         }
		},
	    submitHandler: function(form) {
	        form.submit();
	    }
	});
});
</script>
<style>
.error{
  color:red;
}
</style>
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
			action="${pageContext.request.contextPath }/product/productpost" novalidate="novalidate" id="PostProductForm">
			   <div id="form-content">
                            <fieldset>
                                <div class="row">
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                       <label for="input-firstname">Product Name <span  class="required-f">*</span></label>
                                        <s:input path="name"  type="text" id="name"/> 
                                        
                                    </div>
                                    <div class="form-group col-md-2 col-lg-2 col-xl-2 required">
                                        <label for="input-lastname">Price Start <span class="required-f">*</span></label>
                                       
                                         <div class="icon-addon addon-lg">
						                    <s:input path="priceStart" type="number" min="1"  class="form-control" id="priceStart"/>
						                    <label  for="email" class="glyphicon glyphicon-usd" rel="tooltip" title="email"></label>
						                </div>
                                    </div>
                                       <div class="form-group col-md-2 col-lg-2 col-xl-2 required">
                                        <label for="input-lastname">Price Step <span class="required-f">*</span></label>
                                        <div class="icon-addon addon-lg">
						                    <s:input path="priceStep" type="number" min="1" class="form-control" required="required" id="priceStep"/>
						                    <label for="email" class="glyphicon glyphicon-usd" rel="tooltip" title="email"></label>
						                </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                         
                       					 <label for="filter-date">Start Date <span  class="required-f">*</span></label>
                        				<s:input path="startDate"  name="filter-date"  id="startdate"  />
               
                                    </div>
                                      <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                        <label for="filter-date">End Date <span  class="required-f">*</span></label>
                        				<s:input path="endDate"  name="filter-date"  id="enddate" />
                                    </div>
                                </div>
                               
                            </fieldset>

                            <fieldset>
                                
                                <div class="row">
                                    
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                        <label for="input-country">Category  <span class="required-f">*</span></label>
                                        
                                        <select name="category">
                                        	<c:forEach var="category" items="${categorys}">
                                            <option value="${category.id }"> ${category.name}</option>
                                          	</c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                        <label for="input-zone">Brand / Trademark <span class="required-f">*</span></label>
                                        <select name="brand">
                                           	<c:forEach var="brand" items="${brands}">
                                            	<option value="${brand.id }"> ${brand.name}</option>
                                          	</c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="row">
	                                <div class="form-group col-md-12 col-lg-12 col-xl-12">
	                                <label for="input-firstname">Choose images <span  class="required-f">*</span></label>
	                                    <div class="drop-zone">
	                                    	<h3 class="drop-zone__prompt" style="margin-top: 0;">Drop files here or click to upload.</h3>
	                                    	<!-- <div class="drop--zone__thumb" data-label="myfile.txt"></div> -->
	                                    	<input type="file"  name="files" class="drop-zone__input" style="display: none;" multiple="multiple" /> 
	                                    	<div class="preview"></div>
	                                    </div> 
	                                </div>
                                </div>
                            </fieldset>
                             <fieldset>
                                <div class="row">
                                    <div class="form-group col-md-12 col-lg-12 col-xl-12">
                                        <label  for="input-company">Description <span class="required-f">*</span></label>
                                        <s:textarea path="description" class="form-control resize-both" rows="5"  id="description"/>
                                    </div>
                                </div>
                                
                            </fieldset>
                              <fieldset>
                                <div class="row">
                                     <div class="form-group col-md-12 col-lg-12 col-xl-12">
                                        <label class="form-check-label padding-15px-left">
                                            <input type="checkbox" class="form-check-input" value="" />&ensp;  &emsp;<strong>I have read and agreed <a href="${pageContext.request.contextPath }/other/UserAgreement"> the regulations</a></strong>
                                        </label>
                                  </div>
                                </div>
                                 <div class="row">
                                	 <div class="order-button-payment">
                                	 &emsp;<button class="btn" value="Place order" type="submit">Submit</button>
                            		</div>
                            	 </div>
                            </fieldset> 
                             </div>                          
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
                jQuery('#startdate, #enddate').datetimepicker();
            });
        </script>
	<script
			src="${pageContext.request.contextPath }/resources/user/assets/js/drop-zone.js"></script>
        
	</jsp:attribute>
</mt:layout_user>