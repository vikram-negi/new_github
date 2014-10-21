<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	<title><tiles:insertAttribute name="title" /></title>
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath}/resources/js/html5shiv.3.7.2.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/respond.1.4.2.min.js"></script>
    <![endif]-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/bootstrap/css/datepicker3.css">
	<style type="text/css">
		label.error{color:red;}
		.nav>li>a {	padding: 10px;}
		.nav>li.active {background-color:#eee; }
		.navbar-brand{background-color: #fefefe;color: #AA11FC;font-size: 1.5em !important;font-style: italic;font-weight: bold;}
	</style>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery/jquery.validate.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery/additional-methods.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap/js/jquery-validate.bootstrap-tooltip.js"></script>
	
	<script type="text/javascript">
		var $fdd = $.fn.datepicker.defaults;
		$fdd.format = "mm/dd/yyyy";//"dd/mm/yyyy";//
		$fdd.autoclose = true;
		$fdd.orientation="auto";
		//validation puglin default override
		 $.validator.setDefaults({
			//debug: true,
			invalidHandler : function(form, validator) {
				//console.info(form);
				var noofinvalids= validator.numberOfInvalids();
				$(".error-summary",form.target).html('<div class="alert alert-error">There be '+noofinvalids+' error'+(noofinvalids>1?'s':'')+' here.</div>');
			}
		}); 
	</script>	
</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="menu" />	
	<div class="container-fluid">
		<tiles:insertAttribute name="body" />
	</div>
	<tiles:insertAttribute name="footer" />
	<script type="text/javascript">
		
		$(function(){
			$('.input-group.date input').prop({placeholder: $.fn.datepicker.defaults.format}).datepicker();
		});
	</script>
</body>
</html>