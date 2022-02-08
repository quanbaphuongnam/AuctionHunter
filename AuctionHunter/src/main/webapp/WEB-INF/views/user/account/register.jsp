<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:layout_user title="register">
	<jsp:attribute name="content">
	 <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
	<script type="text/javascript">
			var msg1 = '${msg}';
			if (msg1 == 'Check email') {
				Swal.fire({
					  title: 'Email confirmation code: ',
					  input: 'number',
					  inputAttributes: {
					    autocapitalize: 'off',
					    min: 100000,
					    max: 999999
					  },
					  allowOutsideClick: false,
					  showCancelButton: false,
					  confirmButtonText: 'Check',
					  showLoaderOnConfirm: true,
					  inputPlaceholder: 'Enter the 6-digit verification code...', 
					  inputValidator: (value) => {
						  var code = '${code}';
						    if (!value) {
						      return 'Please enter the confirmation code!'
						    }else if (value != code) {
						    	return 'Verification code is wrong, please re-enter!'
							}else {
							    window.location = '${pageContext.request.contextPath }/account/register?checkEmail'
							}
					  },
				})
			}
</script>
<script>
	$(document).ready(function(){
		$("#username").keyup(function(){
			var username = $("#username").val().trim();
			$.ajax({
				type: 'POST',
				url: '${pageContext.request.contextPath }/ajax/checkusername',
				data:{
					username: username
				},
				success: function(data){
					Swal.fire({
					  position: 'top',
					  icon: 'error',
					  title: ' Username ',
					  showConfirmButton: false,
					  timer: 1000
					})
				}
			});
		});
	});
</script>
<script>
$(document).ready(function($) {
	$("#CustomerLoginForm").validate({
	    rules: {
	    	username: {
		        required: true,
		        minlength: 3
		    },
	        password: {
	            required: true,
	            minlength: 3
	        },
	        fullName: {
	            required: true,
	            minlength: 3
	        },
	        email: {
	            required: true,
	            minlength: 6
	        },
	        repassword: {
				 equalTo: "#password"
			}
	      
	    },
	    messages: {
	    	username: {
		        required: "Please enter Username",  
		        minlength: "Your Username must be at least 3 characters long"
		    },
	        password: {
	            required: "Please enter a password",
	            minlength: "Your password must be at least 3 characters long"
	        },
	        fullName: {
	            required: "Please enter a Full Name",
	            minlength: "Your fullName must be at least 3 characters long"
	        },
	        email: {
	            required: "Please enter a Email",
	            minlength: "Your Email must be at least 6 characters long"
	        },
	        repassword: {
	        	equalTo: "Please enter a Email"
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
		<!--Page Title-->
    	<div class="page section-header text-center">
			<div class="page-title">
        		<div class="wrapper">
					<h1 class="page-width">Create an Account</h1>
				</div>
      		</div>
		</div>
        <!--End Page Title-->
        
        <div class="container">
        	<div class="row">
                <div
					class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
                	<div class="mb-4">
                       <s:form method="post" modelAttribute="account"
							action="${pageContext.request.contextPath }/account/register"
							id="CustomerLoginForm" accept-charset="UTF-8"
							class="contact-form" novalidate="novalidate">	
							    <div id="form-content">
                          <div class="row">
	                          <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="Username">Username</label>
                                    <s:input path="username"
											placeholder="" id="username" name="username" autofocus="" />
                                </div>
                               </div>
                               <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="Full Name">Full Name</label>
                                    <s:input type="text" path="fullName"
											placeholder="" id="fullName" />
                                </div>
                               </div>
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="CustomerEmail">Email</label>
                                    <s:input type="email" path="email"
											placeholder="" id="email" class="" autocorrect="off"
											autocapitalize="off" autofocus="" />
                                </div>
                            </div>
                            <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="CustomerPassword">Password</label>
                                    <s:password value="" path="password"
											placeholder="" id="password" class="" />                        	
                                </div>
                            </div>
                             <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="CustomerPassword"> Re-Password</label>
                                    <input type="password"  id="repassword"  />                        	
                                </div>
                            </div>
                          </div>
                          <div class="row">
                            <div
									class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
                                <input type="submit" class="btn mb-3"
										value="Create">
                            </div>
                         </div>
                         </div>
                     </s:form>
                    </div>
               	</div>
            </div>
        </div>
        
	</jsp:attribute>
</mt:layout_user>