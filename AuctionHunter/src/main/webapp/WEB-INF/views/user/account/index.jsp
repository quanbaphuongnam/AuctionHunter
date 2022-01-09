<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<mt:layout_user title="account">
	<jsp:attribute name="content">
	<script type="text/javascript">
		var msg3 = '${UpdateSuccessful}';
		if (msg3 == "Update successful") {
			Swal.fire({
				position : 'center',
				icon : 'success',
				title : 'Update Successful',
				showConfirmButton : false,
				timer : 2000
			});
		} else {
		}

		var msg1 = '${msg}';
		if (msg1 == "Login successful") {
			Swal.fire({
				position : 'center',
				icon : 'success',
				title : 'Login successful',
				showConfirmButton : false,
				timer : 2000
			});
		} else {
		}
	</script>

  
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
						<a class="nav-link" id="password-tab" data-toggle="pill"
								href="#password" role="tab" aria-controls="password"
								aria-selected="false">
							<i class="fa fa-key text-center mr-1"></i> 
							Password
						</a>
						<a class="nav-link" id="security-tab" data-toggle="pill"
								href="#security" role="tab" aria-controls="security"
								aria-selected="false">
							<i class="fa fa-user text-center mr-1"></i> 
							Security
						</a>
						<a class="nav-link" id="application-tab" data-toggle="pill"
								href="#application" role="tab" aria-controls="application"
								aria-selected="false">
							<i class="fa fa-tv text-center mr-1"></i> 
							Application
						</a>
						<a class="nav-link" id="notification-tab" data-toggle="pill"
								href="#notification" role="tab" aria-controls="notification"
								aria-selected="false">
							<i class="fa fa-bell text-center mr-1"></i> 
							Notification
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
							<div class="col-md-12">
								<div class="form-group">
								  	<label>Bio</label>
									<textarea class="form-control" rows="4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore vero enim error similique quia numquam ullam corporis officia odio repellendus aperiam consequatur laudantium porro voluptatibus, itaque laboriosam veritatis voluptatum distinctio!</textarea>
								</div>
							</div>
						</div>
						<div>
						
							<button type="submit" class="btn btn-primary">Update</button>
				
				
						</div>
						
						
						
					</div>
					<div class="tab-pane fade" id="password" role="tabpanel"
							aria-labelledby="password-tab">
						<h3 class="mb-4">Password Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label><span id="message"></span></label>
								  	
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>New password</label>
								  	<s:password id="new_password" name="new_password"
											path="password" class="form-control" onchange='check_pass();' />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Confirm new password</label>
								  	<input type="password" id="confirm_password"
											name="confirm_password" class="form-control"
											onchange='check_pass();'>
								</div>
							</div>
						</div>
						<div>
							<s:hidden path="id" />
							<s:hidden path="avatar" value="${account.avatar }" />
							<s:hidden path="username" value="${account.username }" />
							<s:hidden path="avatar" value="${account.avatar }" />
							<s:hidden path="role" value="${account.role }" />
							<s:hidden path="report" value="${account.report }" />
							<s:hidden path="isDelete" value="${account.isDelete }" />
						
							<button type="submit" name="submit2" id="submit2"
									class="btn btn-primary" disabled>Update</button>
					
						</div>
					</div>
					
					<div class="tab-pane fade" id="security" role="tabpanel"
							aria-labelledby="security-tab">
						<h3 class="mb-4">Security Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Login</label>
								  	<input type="text" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Two-factor auth</label>
								  	<input type="text" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
												id="recovery">
										<label class="form-check-label" for="recovery">
										Recovery
										</label>
									</div>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
						
						</div>
					</div>
					<div class="tab-pane fade" id="application" role="tabpanel"
							aria-labelledby="application-tab">
						<h3 class="mb-4">Application Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
												id="app-check">
										<label class="form-check-label" for="app-check">
										App check
										</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
												id="defaultCheck2">
										<label class="form-check-label" for="defaultCheck2">
										Lorem ipsum dolor sit.
										</label>
									</div>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
						
						</div>
					</div>
					<div class="tab-pane fade" id="notification" role="tabpanel"
							aria-labelledby="notification-tab">
						<h3 class="mb-4">Notification Settings</h3>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""
										id="notification1">
								<label class="form-check-label" for="notification1">
									Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum accusantium accusamus, neque cupiditate quis
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""
										id="notification2">
								<label class="form-check-label" for="notification2">
									hic nesciunt repellat perferendis voluptatum totam porro eligendi.
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""
										id="notification3">
								<label class="form-check-label" for="notification3">
									commodi fugiat molestiae tempora corporis. Sed dignissimos suscipit
								</label>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
							<button class="btn btn-light">Cancel</button>
						</div>
					</div>
				</div>
			
			
			</div>
		</div>
	
		 </s:form>
  <script
			src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script>
			function check_pass() {

				if (document.getElementById('new_password').value == document
						.getElementById('confirm_password').value) {
					document.getElementById('submit2').disabled = false;
					$('#message').html('Matching').css('color', 'green');
				} else {
					$('#message').html('Not Matching').css('color', 'red');
					document.getElementById('submit2').disabled = true;

				}

			}
		</script>
		<script>
			$(document)
					.ready(
							function() {

								$('#imageFile')
										.change(
												function(evt) {

													var files = evt.target.files;
													var file = files[0];

													if (file) {
														var reader = new FileReader();
														reader.onload = function(
																e) {
															document
																	.getElementById('preview').src = e.target.result;
														};
														reader
																.readAsDataURL(file);
													}
												});
							});
		</script>
	</jsp:attribute>
</mt:layout_user>