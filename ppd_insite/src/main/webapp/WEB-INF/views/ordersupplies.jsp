<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="page-header">
	<h1>
		Order <small>Supplies</small>
	</h1>
</div>
<div class="row">
	<div class="col-md-12">
		<form:form commandName="patient" role="form" name="order"
			id="ordersuppliesFormId" cssClass="form-horizontal">
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
								<label class="col-sm-2 control-label">Protocol Id</label>
								<div class="col-sm-6">
								<select class="form-control" id="protocolId" name="protocolId"
										onchange="changeStudies(this)">
										<option value="">[Select]</option>
								</select>
									<%-- <form:select cssClass="form-control" path="protocolId"
										onchange="changeStudies(this)">
										<option value="">[Select]</option>
										<form:options items="${studiesList}" itemLabel="studyId"
											itemValue="protocolId"></form:options>
									</form:select> --%>
								</div>
								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label class="col-sm-2 control-label">Segement</label>
								<div class="col-sm-6">
									
								<select class="form-control" id="segement" name="segement"
										onchange="changeStudies(this)">
										<option value="">[Select]</option>
								</select>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-12">
							<table class="table table-striped">
							<tr><td></td><tr>
							</table>
						</div>
					</div>
				</div>
				<div class="panel-footer clearfix">
					<label class="error-summary error"></label>
					<div class="pull-right">
						<input class="btn btn-primary" type="submit" value="Submit" /> <a
							class="btn btn-warning" href="newpatient">Cancel</a>
					</div>
				</div>
			</div>
		</form:form>


		<script type="text/javascript">
		$(function() {
			//console.log($('form').length);
			$('#ordersuppliesFormId').validate({
				rules:{
					"protocolId": {required :true},
					"segement":{required:true}
				},
				submitHandler:function(form){
					console.log('Validate successful!!');
					form.submit();
					return false;
				}
			});
			var protocolIds=['Proto-01','Proto-02','Proto-03','Proto-04'];
			var protoHtmls='<option value="">[Select]</option>';
			protocolIds.forEach(function(d, i){ protoHtmls += '<option value="'+i+'">'+d+'</option>'});
			$('#protocolId').html(protoHtmls);
			
			
			var categories = [ {
					name : "Category 01",
					items : [ {
						name : "C01-I01",
						quantity : 10,
						puom : 'each',
						description : "C01-I01 description",
						catalog : "Kits-001"
					},{
						name : "C01-I02",
						quantity : 12,
						puom : 'mg',
						description : "C01-I02 description",
						catalog : "Kits-001"
					},{
						name : "C01-I03",
						quantity : 13,
						puom : 'ml',
						description : "C01-I03 description",
						catalog : "Kits-001"
					} ]
				},{
					name : "Category 02",
					items : [ {
						name : "C02-I01",
						quantity : 20,
						puom : 'each',
						description : "C02-I01 description",
						catalog : "Kits-002"
					},{
						name : "C02-I02",
						quantity : 22,
						puom : 'mg',
						description : "C02-I02 description",
						catalog : "Kits-002"
					},{
						name : "C02-I03",
						quantity : 23,
						puom : 'ml',
						description : "C02-I03 description",
						catalog : "Kits-002"
					} ]
				},{
					name : "Category 03",
					items : [ {
						name : "C03-I01",
						quantity : 30,
						puom : 'each',
						description : "C03-I01 description",
						catalog : "Kits-003"
					},{
						name : "C03-I02",
						quantity : 32,
						puom : 'mg',
						description : "C03-I02 description",
						catalog : "Kits-003"
					},{
						name : "C03-I03",
						quantity : 33,
						puom : 'ml',
						description : "C03-I03 description",
						catalog : "Kits-003"
					} ]
				} ];
			});
			function changeStudies(el) {
				$('#segement').html($(el).val());
			}
		</script>
	</div>
</div>