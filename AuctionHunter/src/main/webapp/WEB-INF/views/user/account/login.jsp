<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<mt:layout_user title="login">
	<jsp:attribute name="content">
		
		<script type="text/javascript">
			var msg1 = '${msg}';
			if (msg1 == 'Login unsuccessful') {
				Swal.fire({
					position : 'center',
					icon : 'error',
					title : 'Login unsuccessful',
					showConfirmButton : false,
					timer : 2000
				});
			} else if (msg1 == 'Logout Successfully') {
				Swal.fire({
					position : 'center',
					icon : 'success',
					title : 'Logout Successfully',
					showConfirmButton : false,
					timer : 2000
				});
			}
		</script>
       <!--Page Title-->
    	<div class="page section-header text-center">
			<div class="page-title">
        		<div class="wrapper">
					<h1 class="page-width">Login</h1>
				</div>
        		 <!-- <c:choose> 
        		 	<c:when test="${msg == 'Login unsuccessful'}">
					    <p style="color: red;">${msg}</p>
					</c:when>
					<c:when test="${msg == 'Logout Successfully'}">
					    <p style="color: blue">${msg}</p>
					</c:when>
					<c:otherwise>
						  
					</c:otherwise>  
				</c:choose> -->
      		</div>
		</div>
        <!--End Page Title-->
        
        <div class="container">
        	<div class="row">
                <div
					class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
                	<div class="mb-4">
                       <form method="post"
							action="${pageContext.request.contextPath }/account/process-login"
							id="CustomerLoginForm" accept-charset="UTF-8"
							class="contact-form">	
                          <div class="row">
                            <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="CustomerEmail">Username</label>
                                    <input type="text" name="username"
											placeholder="" id="CustomerEmail" class="" autocorrect="off"
											autocapitalize="off" autofocus="" required="required">
                                </div>
                            </div>
                            <div
									class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="CustomerPassword">Password</label>
                                    <input type="password" value=""
											name="password" placeholder="" id="CustomerPassword" class=""
											required="required">                        	
                                </div>
                            </div>
                          </div>
                          <div class="row">
                            <div
									class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
                                <input type="submit" class="btn mb-3"
										value="Sign In">
                                <p class="mb-4">
									<a href="#" id="RecoverPassword">Forgot your password?</a> &nbsp; | &nbsp;
								    <a
											href="${pageContext.request.contextPath }/account/register"
											id="customer_register_link">Create account</a>
                                </p>
                            </div>
                         </div>
                     </form>
                    </div>
               	</div>
            </div>
        </div>
        
       
	</jsp:attribute>
</mt:layout_user>