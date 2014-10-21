<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap.min.css">
<style type="text/css">
label.error{color:red;}
.nav>li>a {	padding: 10px;}
.nav>li.active {background-color:#eee; }
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery/additional-methods.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Docs master nav -->
	<header class="navbar navbar-static-top bs-docs-nav" id="top"
		role="banner">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button"
				data-toggle="collapse" data-target=".bs-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="#/" class="navbar-brand">PPD - Insite</a>
		</div>
		<nav class="collapse navbar-collapse bs-navbar-collapse"
			role="navigation">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#/newpatient">New Patient</a></li>
				<li><a href="#/returningpatient">Returning Patient</a></li>
				<li><a href="#/patientreport"> Patient Report </a></li>
				<li><a href="#/querycenter"> Query Center </a></li>
				<li><a href="#/ordersupplies"> Order Supplies </a></li>
				<li><a href="#/studydocuments"> Study Documents </a></li>
				<li><a href="#/createshipment"> Create Shipment </a></li>
				<li><a href="#/shipmenthistory">Shipment History </a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="logout">Logout</a></li>
			</ul>
		</nav>
	</div>
	</header>
	<div class="container">
		<div class="page-header">
			<h1>
				New Patient <small>Registration</small>
			</h1>
		</div>
		<div class="row">
			<div class="col-md-12">
				<form:form commandName="patient" role="form" name="patient" id="patientFormId"
					cssClass="form-horizontal">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<div class="col-sm-12 error-summary">
											<form:errors path="*"
												cssClass="alert alert-danger alert-dismissible  col-sm-4"
												role="alert" element="div" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="col-sm-2 control-label">Study:</label>
										<div class="col-sm-6">
											<%-- <form:select cssClass="form-control" path="study.studyId">
												<form:options items="${studiesList}" itemLabel="studyId"
													itemValue="protocolId"></form:options>
											</form:select> --%>
											<select Class="form-control" onchange="changeStudies(this)">
												<c:forEach items="${studiesList}" var="stud">
													<option value="${stud.protocolId}"><c:out
															value="${stud.studyId}"></c:out></option>
												</c:forEach>
											</select>
										</div>
										<form:errors path="study.studyId"
											cssClass="alert alert-danger alert-dismissible  col-sm-4"
											role="alert" element="div" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="col-sm-2 control-label">Protocol Id:</label>
										<div class="col-sm-6">
											<div id="protocolId">
												<c:if test="${study.studyId !=null }">
													<c:forEach items="${studiesList}" var="stud">
														<c:if test="${stud.protocolId == study.studyId }">
															<c:out value="${stud.protocolId}"></c:out>
														</c:if>
													</c:forEach>
												</c:if>

												<c:if test="${study.studyId ==null }">
													<c:out value="${studiesList[0].protocolId}"></c:out>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</div>
							<ul class="nav nav-tabs" role="tablist" id="myTab">
								<li class="active"><a href="#demo1" role="tab"
									data-toggle="tab">Demographic #1</a></li>
								<li><a href="#demo2" role="tab" data-toggle="tab">Demographic
										#2</a></li>
							</ul>

							<div class="tab-content">
								<div class="tab-pane active" id="demo1">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label class="col-sm-2 control-label">Name:</label>
												<div class="col-sm-6">
													<form:input cssClass="form-control" path="name" />
												</div>
												<form:errors path="name"
													cssClass="alert alert-danger alert-dismissible  col-sm-4"
													role="alert" element="div" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label class="col-sm-2 control-label">Address:</label>
												<div class="col-sm-6">
													<form:input cssClass="form-control" path="address" />
												</div>
												<form:errors path="address"
													cssClass="alert alert-danger alert-dismissible  col-sm-4"
													role="alert" element="div" />
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="demo2">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label class="col-sm-2 control-label">Phone:</label>
												<div class="col-sm-6">
													<form:input cssClass="form-control" path="phone" />
												</div>
												<form:errors path="phone"
													cssClass="alert alert-danger alert-dismissible  col-sm-4"
													role="alert" element="div" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label class="col-sm-2 control-label">Email:</label>
												<div class="col-sm-6">
													<form:input cssClass="form-control" path="email" />
												</div>
												<form:errors path="email"
													cssClass="alert alert-danger alert-dismissible  col-sm-4"
													role="alert" element="div" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label class="col-sm-2 control-label">Date of Birth:</label>
												<div class="col-sm-6">
													<form:input cssClass="form-control" path="dob"
														date-picker="datepicker" />
												</div>
												<form:errors path="dob"
													cssClass="alert alert-danger alert-dismissible  col-sm-4"
													role="alert" element="div" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label class="col-sm-2 control-label">Age:</label>
												<div class="col-sm-6">
													<form:input cssClass="form-control" path="age"
														readonly="readonly" />
												</div>
												<form:errors path="age"
													cssClass="alert alert-danger alert-dismissible  col-sm-4"
													role="alert" element="div" />
											</div>
										</div>
									</div>
								</div>
							</div>


						</div>
						<div class="panel-footer">
								<input class="btn btn-primary" type="submit"
									value="Save" />
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			console.log($('form').length);
			$('#patientFormId').validate({
				rules:{
					"study\.studyId": {required :true},
					"name":{required:true},
					"age":{range:[18,100]},
					"dob":{date:true}
				},
				submitHandler:function(form){
					console.log('Validate successful!!');
					form.submit();
					return false;
				}
			});
		});
		function changeStudies(el){
			$('#protocolId').html($(el).val());
		}
	</script>
</body>
</html>