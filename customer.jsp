<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>
    <html>
    <head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="/css/fancybox/customer.css" rel="stylesheet" type="text/css">
    </head>

<!------ Include the above in your HEAD tag ---------->

 <!-- login start -->
 <body>       


  
<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome.</h3>
                        <!-- <input type="submit" name="" value="Login"/><br/> -->
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                         <li class="nav-item">
                                <a class="nav-link" id="home-tab"  href="home" >Home |   </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Insurance|   </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Renewal|   </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#reqlist" role="tab" aria-controls="profile" aria-selected="false">Myrequest |  </a>
                            </li>
                            <li class="nav-item"><a class="nav-link" id="home-tab"
						href="/home" role="tab">Log out</a></li>
                            
                        </ul>
                        <sf:form action="/saveInsurance" modelAttribute="command" method="GET" name="form">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">New Insurance</h3>
                                <div class="row register-form">
                              
                                    <div class="col-md-6">
                                    <div class="form-group">
                                            <sf:input type="text" path="firstName" class="form-control" placeholder="First Name" required="required" value="${firstName}" />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text" path="lastName" class="form-control" placeholder="Last Name" required="required" value="${lastName}"  />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text"  path="address" class="form-control" placeholder="Address" required="required" value="${address}"  />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="number" path="vehicleRegistrationNumber" class="form-control" placeholder="Vehicle Registration Number" required="required" value="${registrationnumber}"   />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="number" path="mobileNumber" class="form-control" placeholder="Mobile Number" required="required" value="${mobilenumber}" />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="email" path="emailId" class="form-control" placeholder="Email Id" value="${email}" required="required"  />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text" path="cityOfRegistration" class="form-control"  placeholder="City of Registration" required="required" value="${cityofregistration}"  />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text" path="registrationDate" class="form-control" onfocus="(this.type='date')" placeholder="Registration Date" required="required" value="${registrationdate}"   />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text" path="make" class="form-control"  placeholder="Manufacturer Name / Make" value="${make}" required="required"  />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text" path="model" class="form-control"  placeholder="Model" value="${model}" required="required"  />
                                        </div>
                                                                                                                                                                               
                                    </div>
                                    <div class="col-md-6">
                                    <div class="form-group">
                                            <sf:input type="text" path="variant" class="form-control"  placeholder="Variant" required="required"  />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text" path="manufacturingYear" class="form-control" placeholder="Manufacturing Year" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text" path="fuelType"  class="form-control" placeholder="Fuel Type" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="number" path="vin" class="form-control"  placeholder="VIN" required="required"/>
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text" path="engine" class="form-control"  placeholder="Engine" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text" path="transmission" class="form-control"  placeholder="Transmisson" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text" path="axlesAndExhaust" class="form-control"  placeholder="Axles and Exhaust" required="required" />
                                        </div>
                                         <div class="form-group">
                                            <sf:input type="text" path="wheelAndAssembly" class="form-control"  placeholder="Wheel and assembly" required="required" />
                                        </div>
                                        <div class="form-group">
                                        <input type="submit" class="btnRegister"  value="Submit"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                            <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <h3  class="register-heading">Renewal Form</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <sf:input type="number" path="insuranceNumber" class="form-control" placeholder="Insurance Number"  />
                                        </div>
                                        <div class="form-group">
                                            <sf:input type="text" path="expireDate" pathclass="form-control" placeholder="Date of Expiry"  />
                                        </div>                                    
                                        <div class="form-group">
                                        <input type="submit" class="btnRegister"  value="Submit"/>
                                    </div>
                                    </div>
                                </div>
                            </div>
                          
                            <div class="tab-pane fade show" id="reqlist" role="tabpanel" aria-labelledby="profile-tab">
                                <h3  class="register-heading">My Request</h3>
                                <div class="row register-form">
                                    <div>
								<table class="table table-striped custab">
									<thead>
										<tr>
											<th>InsuranceId</th>
											<th>Registration Number</th>
											<th>Status</th>
											<th colspan="2">Action</th>
										</tr>
									</thead>
									
									<c:forEach items="${insuranceListt}" var="insurance">							
									<tr>
										
										<td>${insurance.insuranceId}</td>
										<td>${insurance.vehicleRegistrationNumber}</td>
										<td>${insurance.status}</td>
										
										<td><a class='btn btn-info btn-xs' href="/feedBackForm/${insurance.insuranceId}"><span
												class="glyphicon glyphicon-edit"></span> FeedBack</a></td>
												
											
									</tr>
									</c:forEach>
									</table>
							</div>
                                </div>
                            </div>
                        </div>
                        </sf:form>
                    </div>
                </div>
            </div>
</body>
</html>