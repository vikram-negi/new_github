<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="page-header">
	<h1>
		Patient <small>Report</small>
	</h1>
</div>
<ul class="nav nav-tabs" id="myTab">
	<li class="active"><a data-target="#home" data-toggle="tab">PDF
			Report View</a></li>
	<li><a data-target="#profile" data-toggle="tab">Trending
			subject result view</a></li>
</ul>

<div class="tab-content">
	<div class="tab-pane active" id="home">
		<form role="form" action="#" id="patientReportFormId">

			<div class="panel panel-default">
				<div class="panel-body">
					<div class="input-group">
						<label for="exampleInputEmail1">Protocol Id</label> <select
							class="form-control" placeholder="Enter Protocol Id">
							<option value="volvo">All Protocol</option>
							<option value="saab">Protocol-1</option>
							<option value="mercedes">Protocol-2</option>
							<option value="audi">Protocol-3</option>
						</select>
					</div>
					<div class="input-group">
						<label for="exampleInputPassword1">Subject Id</label> <select
							class="form-control" placeholder="Enter Protocol Id">
							<option value="volvo">All Subject</option>
							<option value="saab">Subject-1</option>
							<option value="mercedes">Subject-2</option>
							<option value="audi">Subject-3</option>
						</select>
					</div>
					<div class="form-group">
						<label for="exampleInputFile">Draw Date</label>
						<div class="container">
							<div class="row">
								<div class='col-sm-6'>
									<div class="form-inline">
										<div class="input-daterange input-group" id="datepicker">
										    	<input type="text" class="input-sm form-control" name="start" />
											<!-- <div class='input-group'>
										    	<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
										    </div> -->
										    <span class="input-group-addon">to</span>
										    
										    	<input type="text" class="input-sm form-control" name="end" />
											<!-- <div class='input-group'>
										    	<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
										    </div> -->
										</div>
										
										<div class="input-group">
											<span class="input-group-addon"><input type="checkbox" name="checkall"></span>
											<label class="form-control"> All</label>
										</div>

									</div>
								</div>

							</div>
						</div>

					</div>

				</div>
				<div class="panel-footer">
					<button type="submit" class="btn btn-primary">Show Reports</button>
				</div>
			</div>
		</form>


	</div>
	<div class="tab-pane" id="profile">
		<form class="form-group" role="form">

			<div class="panel panel-default">
				<div class="panel-body">
					<div class="input-group">
						<label for="exampleInputEmail1">Protocol Id</label> <select
							class="form-control" placeholder="Enter Protocol Id">
							<option value="">Select one</option>
							<option value="saab">Protocol-1</option>
							<option value="mercedes">Protocol-2</option>

						</select>
					</div>

					<div class="form-group">
						<div class="input-group">
							<label for="exampleInputEmail1">Subject Id</label> <select
								class="form-control" placeholder="Enter Protocol Id">
								<option value="volvo">Select One</option>
								<option value="saab">Subject-1</option>
								<option value="mercedes">Subject-2</option>
								<option value="audi">Subject-3</option>
							</select>
						</div>
					</div>
					<div class="form-group"></div>

				</div>
				<div class="panel-footer">
					<button type="submit" class="btn btn-primary">Show Report</button>
				</div>
		</form>


	</div>
</div>

<script type="text/javascript">
		$(function() {
			$('#patientReportFormId .input-daterange').datepicker({	});
		});
		function changeStudies(el) {
			$('#protocolId').html($(el).val());
		}
</script>