<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<mt:layout_user title="account">
	<jsp:attribute name="content">
	

  
	<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/resources/user/profile/css/style.css">
		
	
	<s:form method="post" modelAttribute="account"
			enctype="multipart/form-data"
			action="${pageContext.request.contextPath }/account/updateProfile">
		<div class="container">
			<h2 class="mb-5"> </h2>
			<div class="bg-white shadow rounded-lg d-block d-sm-flex">
				<div class="profile-tab-nav border-right">
					<div class="p-4">
						<div class="img-circle text-center mb-3">
						<a href="${pageContext.request.contextPath }/account/index">
							<img id="preview"
									src="${pageContext.request.contextPath }/assets/uploads/${account.avatar }"
									alt="Image" class="shadow">
								</a>
						</div>
				
						<input id="imageFile" type="file" name="fileavatar"
								class="text-center btnFile">
					</div>
					<div class="nav flex-column nav-pills" id="v-pills-tab"
							role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="account-tab" data-toggle="pill"
								href="#account" role="tab" aria-controls="account"
								aria-selected="true">
							<i class="fa fa-home text-center mr-1"></i> 
							Account
						</a>
					
					</div>
				</div>
				
									
									
				<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
				 
					<div class="tab-pane fade show active" id="account" role="tabpanel"
							aria-labelledby="account-tab">
						<h3 class="mb-4">Account Settings</h3>
						
						<div class="row">
						
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Full Name</label>
								  <s:input path="fullName" type="text" class="form-control" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Email</label>
								  	<s:input path="email" type="text" class="form-control" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Address</label>
								  	<s:input path="address" type="text" class="form-control" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Phone number</label>
								  <s:input path="phone" type="text" class="form-control" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Birthday</label>
								  	<s:input id="datepicker" path="dob" class="form-control" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>sex</label>
								<s:select path="sex">
								<s:option value="male">Male</s:option>
								<s:option value="female">Female</s:option>
								  </s:select>
								</div>
							</div>
							
						</div>
						
						
						
					</div>
					
					
				</div>
			
			
			</div>
		</div>
	
		 </s:form>
  <script
			src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
 
	</jsp:attribute>
</mt:layout_user>