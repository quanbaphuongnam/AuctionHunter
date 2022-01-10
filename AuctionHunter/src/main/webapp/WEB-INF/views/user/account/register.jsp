<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:layout_user title="register">
	<jsp:attribute name="content">
	<script type="text/javascript">
			var msg1 = '${msg}';
			if (msg1 == 'Check email') {
				Swal.fire({
					  title: 'Email confirmation code: ',
					  input: 'text',
					  inputAttributes: {
					    autocapitalize: 'off'
					  },
					  allowOutsideClick: false,
					  showCancelButton: false,
					  confirmButtonText: 'Check',
					  showLoaderOnConfirm: true,
					  preConfirm: (check) => {
						  var code = '${code}';
						  if (check != code) {
							  Swal.showValidationMessage('aa')
						    }else {
						    	window.location = '${pageContext.request.contextPath }/account/register?checkEmail'
						    }
						  },
					})
			}
	</script>
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
							class="contact-form">	
                          <div class="row">
	                          <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="Username">Username</label>
                                    <s:input path="username"
											placeholder="" id="Username" autofocus="" />
                                </div>
                               </div>
                               <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="Full Name">Full Name</label>
                                    <s:input type="text" path="fullName"
											placeholder="" id="LastName" />
                                </div>
                               </div>
                            <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="CustomerEmail">Email</label>
                                    <s:input type="email" path="email"
											placeholder="" id="CustomerEmail" class="" autocorrect="off"
											autocapitalize="off" autofocus="" />
                                </div>
                            </div>
                            <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="CustomerPassword">Password</label>
                                    <s:password value="" path="password"
											placeholder="" id="CustomerPassword" class="" />                        	
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
                     </s:form>
                    </div>
               	</div>
            </div>
        </div>
        
		
       
	</jsp:attribute>
</mt:layout_user>