<div class="row">
	<div class="col-md-4">ABC1</div>
	<div class="col-md-4">ABC2</div>
	<div class="col-md-4">ABC3</div>
</div>
<div class="row">
	<div class="col-md-4">ABC12</div>
	<div class="col-md-4">ABC22</div>
	<div class="col-md-4">ABC32</div>
</div>
<br><br>
<form role="form" name=xyz>
	<div class="error-summary"></div>
	<div class="row">
		<div class="col-md-4 col-xs-6">
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					type="email" class="form-control" id="exampleInputEmail1"
					placeholder="Enter email">
			</div>
		</div>
		<div class="col-md-4 col-xs-6">
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> 
				<div class="input-group">
				<input type="text" class="form-control" id="exampleInputPassword1" data-provide="datepicker" 
					placeholder="Password">
					<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<label for="exampleInputFile">File input</label> 
				<input type="file"  name="acceptanceFile" required
					id="exampleInputFile">
				<p class="help-block">Example block-level help text here.</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<div class="checkbox">
				<label> <input type="checkbox" name="acceptance" required> Check me out
				</label>
			</div>
		</div>
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
	<a href="#" class="btn btn-danger">Cancel</a>
</form>
<script type="text/javascript">
$('form[name=xyz]').validate({
	submitHandler:function(form){
		console.info('validation successful!!');
		return false;
	}
});
</script>
<br><br>
<div></div>
<div class="table-responsive">
<table class="table table-striped table-bordered">
<tr>
	<th class="col-md-4">ABC12</th>
	<th class="col-md-4">ABC22</th>
	<th class="col-md-4">ABC32</th>
</tr>
<tr>
	<td class="col-md-4">ABC12</td>
	<td class="col-md-4">ABC22</td>
	<td class="col-md-4">ABC32</td>
</tr>
<tr>
	<td class="col-md-4">ABC12</td>
	<td class="col-md-4">ABC22</td>
	<td class="col-md-4">ABC32</td>
</tr>
<tr>
	<td class="col-md-4">ABC12</td>
	<td class="col-md-4">ABC22</td>
	<td class="col-md-4">ABC32</td>
</tr>
</table>
</div>