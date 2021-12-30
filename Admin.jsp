<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
	
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="/css/fancybox/adminpage.css" rel="stylesheet" type="text/css">
</head>

<!------ Include the above in your HEAD tag ---------->

<!-- login start -->
<body>



	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h3>Welcome Admin.</h3>
			</div>
			<div class="col-md-12 register-right">
				<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="home-tab"
						data-toggle="tab" href="#home" role="tab" aria-controls="home"
						aria-selected="true">Registration Details</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#newpolicyrequest" role="tab"
						aria-controls="profile" aria-selected="false">New Policy
							Request</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#policyaftervalidation" role="tab"
						aria-controls="profile" aria-selected="false">Policy After
							Validation</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#approvedpolicy" role="tab"
						aria-controls="profile" aria-selected="false">Approved Policy</a>
					</li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#rejectedpolicy" role="tab"
						aria-controls="profile" aria-selected="false">Rejected Policy</a>
					</li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#fieldofficerlist" role="tab"
						aria-controls="profile" aria-selected="false">Field Officer
							List</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#policyadmin" role="tab"
						aria-controls="profile" aria-selected="false">Policy Admin</a></li>
					<li class="nav-item"><a class="nav-link" id="home-tab"
						href="/home" role="tab">Log out</a></li>
				</ul>
				
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<h3 class="register-heading">Registration Details</h3>
						<div class="row register-form">
							<div>
								<table class="table table-striped custab">
									<thead>
										<tr>
											<th>Name</th>
											<th>DOB</th>
											<th>Contact No</th>
											<th>Role</th>
											<th>UserCategory</th>
											<th colspan="2">Action</th>
										</tr>
									</thead>
									
									<c:forEach items="${userList}" var="user">							
									<tr>
										<td>${user.firstName},${user.lastName}</td>
										<td>${user.dateOfBirth}</td>
										<td>${user.contactNumber}</td>
										<td>${user.role}</td>
										<td>${user.userCategory}</td>
										<td><a class='btn btn-info btn-xs' href="/approveUser/${user.userId}"><span
												class="glyphicon glyphicon-edit"></span> Approve</a></td>
												
											<td>	 <a href="/rejectUser/${user.userId}"
											class="btn btn-danger btn-xs"><span
												class="glyphicon glyphicon-remove"></span>Reject</a></td>
									</tr>
									</c:forEach>
									</table>
							</div>
						</div>
					</div>
					<div class="tab-pane fade show" id="newpolicyrequest"
						role="tabpanel" aria-labelledby="profile-tab">
						<h3 class="register-heading">New Policy Request List</h3>
						<div class="row register-form">
							<div>
								<table class="table table-striped custab">
									<thead>
										<tr>
											<th>Insurance Id</th>
											<th>Customer Name</th>
											<th>VehicleName</th>
										</tr>
									</thead>
									
									<c:forEach items="${insuranceList}" var="insurance">
									<tr>
										<td><a class="tab-pane fade show" href="viewpolicy/${insurance.insuranceId}">${insurance.insuranceId}</a></td>
										<td>${insurance.firstName},${insurance.lastName}</td>
										<td>${insurance.make}-${insurance.make}</td>
									</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
					<div class="tab-pane fade show" id="policyaftervalidation"
						role="tabpanel" aria-labelledby="profile-tab">
						<h3 class="register-heading">ValidatedPolicy</h3>
						<div class="row register-form">
							<div>
								<table class="table table-striped custab">
								<thead>
									<!-- <a href="#" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new categories</a> -->
									<tr>
									    
										<th>Insurance Id</th>
										<th>Manufacturing Year</th>
										<th>Fuel Type</th>
										<th>VIN</th>
										<th>Engine</th>
										<th>Transmission</th>
										<th>Axles and Exhaust</th>
										<th>Wheel and assembly</th>
														
										<!-- <th class="text-center">Action</th> -->
									</tr>
								</thead>
								<c:forEach items="${validatedpolicies}" var="policies">
								<tr>
									
									<td>${policies.insuranceId }</td>
									<td>${policies.manufacturingYear }</td>
									<td>${policies.fuelType }</td>
									<td>${policies.vin}</td>
									<td>${policies.engine}</td>
									<td>${policies.transmission }</td>
									<td>${policies.axlesAndExhaust }</td>
									<td>${policies.wheelAndAssembly }</td>
									
									<!--<td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>  -->
								</tr>
								</c:forEach>
							</table>

							</div>
						</div>
					</div>
					<div class="tab-pane fade show" id="approvedpolicy" role="tabpanel"
						aria-labelledby="profile-tab">
						<h3 class="register-heading">Approved Policy</h3>
						<div class="row register-form">
						<table class="table table-striped custab">
									<thead>
										<tr>
											<th>Insurance Id</th>
											<th>Customer Name</th>
											<th>Registration Number</th>
											<th>Contact Number</th>
											<th>Email Id</th>
										</tr>
									</thead>
									
									<c:forEach items="${approvedList}" var="approved">
									<tr>
										<td>${approved.insuranceId}</td>
										<td>${approved.firstName},${approved.lastName}</td>
										<td>${approved.vehicleRegistrationNumber}</td>
										<td>${approved.mobileNumber }</td>
										<td>${approved.emailId }</td>
									</tr>
									</c:forEach>
								</table>
						
						</div>
					</div>
					<div class="tab-pane fade show" id="rejectedpolicy" role="tabpanel"
						aria-labelledby="profile-tab">
						<h3 class="register-heading">Rejected Policy</h3>
						<div class="row register-form">
						<table class="table table-striped custab">
									<thead>
										<tr>
											<th>Insurance Id</th>
											<th>Customer Name</th>
											<th>Registration Number</th>
											<th>Contact Number</th>
											<th>Email Id</th>
										</tr>
									</thead>
									
									<c:forEach items="${rejectedList}" var="rejected">
									<tr>
										<td>${rejected.insuranceId}</td>
										<td>${rejected.firstName},${rejected.lastName}</td>
										<td>${rejected.vehicleRegistrationNumber}</td>
										<td>${rejected.mobileNumber }</td>
										<td>${rejected.emailId }</td>
									</tr>
									</c:forEach>
								</table>
						</div>
					</div>
					<div class="tab-pane fade show" id="fieldofficerlist"
						role="tabpanel" aria-labelledby="profile-tab">
						<h3 class="register-heading">Field Officer List</h3>
						<div class="row register-form">
							<div>
								<table class="table table-striped custab">
									<thead>
										<tr>
											<th>Officer Id</th>
											<th>Officer Name</th>
											
											<th>Action</th>
										</tr>
									</thead>
									<c:forEach items="${fieldOfficerList}" var="fieldOfficer">
									<tr>
										
								
										<td><a class="tab-pane fade show" href="fieldofficer/${fieldOfficer.userId }">${fieldOfficer.userId }</a></td>
										<td>${fieldOfficer.firstName },${fieldOfficer.lastName }</td>
										
										<td class="text-center"><a class='btn btn-info btn-xs'
											href="foassign/${fieldOfficer.userId}"><span class="glyphicon glyphicon-edit"></span>
												Assign</a></td>
									</tr>
									</c:forEach>
									
									
								</table>
							</div>
						</div>
					</div>

					<div class="tab-pane fade show" id="policyadmin" role="tabpanel"
						aria-labelledby="profile-tab">
						<h3 class="register-heading">Policy Admin</h3>
						<div class="row register-form">
							<div class="col-md-6">
								<table class="table table-striped custab">
									<thead>
										<!-- <a href="#" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new categories</a> -->
										<tr>
											<th>Id</th>
											<th class="text-center">Name</th>
											<th>Action</th>

											<!-- <th class="text-center">Action</th>  -->
										</tr>
									</thead>
									<c:forEach items="${policyAdminList}" var="policyAdmin">
									<tr>
										

										<td><a href="policyAdminValues/${policyAdmin.userId }">${policyAdmin.userId }</a></td>
										<td>${policyAdmin.firstName },${policyAdmin.lastName }</td>
										<td class="text-center"><a class='btn btn-info btn-xs'
											href="paassign/${policyAdmin.userId}"><span class="glyphicon glyphicon-edit"></span>
												Assign</a></td>
										<!--<td class="text-center"><a class='btn btn-info btn-xs' href="welcome.jsp"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>  -->
									</tr>
									</c:forEach>
									
								</table>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>