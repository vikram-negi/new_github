<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="page-header">
	<h1>
		New Patient <small>Registration</small>
	</h1>
</div>
<div class="row">
	<div class="col-md-12">
		<form:form commandName="patient" role="form" name="patient"
			id="patientFormId" cssClass="form-horizontal">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<div class="col-sm-12">
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
								<label class="col-sm-2 control-label">Study</label>
								<div class="col-sm-6">
									<form:select cssClass="form-control" path="study.studyId" onchange="changeStudies(this)">
									<option value="">[Select]</option>
										<form:options items="${studiesList}" itemLabel="studyId" itemValue="protocolId"></form:options>
									</form:select>
									<%-- <select Class="form-control" onchange="changeStudies(this)">
										<c:forEach items="${studiesList}" var="stud">
											<option value="${stud.protocolId}"><c:out
													value="${stud.studyId}"></c:out></option>
										</c:forEach>
									</select> --%>
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
								<label class="col-sm-2 control-label">Protocol Id</label>
								<div class="col-sm-6">
									<div id="protocolId">
										<c:if test="${study.studyId !=null }">
											<c:forEach items="${studiesList}" var="stud">
												<c:if test="${stud.protocolId == study.studyId }">
													<c:out value="${stud.protocolId}"></c:out>
												</c:if>
											</c:forEach>
										</c:if>

										<%-- <c:if test="${study.studyId ==null }">
											<c:out value="${studiesList[0].protocolId}"></c:out>
										</c:if> --%>
									</div>
								</div>
							</div>
						</div>
					</div>
<!-- 					<ul class="nav nav-tabs" role="tablist" id="myTab">
						<li class="active"><a href="#demo1" role="tab"
							data-toggle="tab">Demographic #1</a></li>
						<li><a href="#demo2" role="tab" data-toggle="tab">Demographic
								#2</a></li>
					</ul>

					<div class="tab-content">
						<div class="tab-pane active" id="demo1"> -->
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="col-sm-2 control-label">Name</label>
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
										<label class="col-sm-2 control-label">Address</label>
										<div class="col-sm-6">
											<form:input cssClass="form-control" path="address" />
										</div>
										<form:errors path="address"
											cssClass="alert alert-danger alert-dismissible  col-sm-4"
											role="alert" element="div" />
									</div>
								</div>
							</div>
						<!-- </div>
						<div class="tab-pane" id="demo2"> -->
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="col-sm-2 control-label">Phone</label>
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
										<label class="col-sm-2 control-label">Email</label>
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
										<label class="col-sm-2 control-label">Date of Birth</label>
										<div class="col-sm-6">
											<div class="input-group date">
											<form:input cssClass="form-control" path="dob"
												data-provide="datepicker" />
											<span class="input-group-addon" ><i class="glyphicon glyphicon-calendar"></i></span>
											</div>
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
										<label class="col-sm-2 control-label">Age</label>
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
						<!-- </div>
					</div> -->


				</div>
				<div class="panel-footer clearfix">
				<label class="error-summary error"></label>
				<div class="pull-right">
					<input class="btn btn-primary" type="submit" value="Submit" />
					<a class="btn btn-warning" href="newpatient" >Cancel</a></div>
				</div>
			</div>
		</form:form>
		

	<script type="text/javascript">
		$(function() {
			//console.log($('form').length);
			$('#patientFormId').validate({
				rules:{
					"study\.studyId": {required :true},
					"address":{required:true},
					"name":{required:true},
					"age":{range:[18,100]},
					"dob":{required:true,date:true}
				},
				submitHandler:function(form){
					console.log('Validate successful!!');
					form.submit();
					return false;
				}
			});
		});
		$('#patientFormId input[name=dob]').datepicker({changeDate: function (el) {
			debugger;
		    $('#patientFormId input[name=age]').val(el.currentTarget.value);
		  }});
		function changeStudies(el){
			$('#protocolId').html($(el).val());
		}
	</script>
	</div>
</div>