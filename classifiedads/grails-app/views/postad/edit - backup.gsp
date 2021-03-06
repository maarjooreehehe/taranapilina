<%@ page import="classifiedads.Postad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="layout" content="mainpost"/>
		<title>Post and Shoppe 'til you drop!</title>
		<!-- bootstrap -->
		<link rel="stylesheet" href="${resource(dir:'bootstrap/css', file: 'bootstrap.min.css')}" />      
		<link rel="stylesheet" href="${resource(dir:'bootstrap/css', file: 'bootstrap-responsive.min.css')} "/>
		<link rel="stylesheet" href="${resource(dir:'themes/css/bootstrap', file: 'bootstrap.css')} "/>
		
		<!-- global styles -->
		<link rel="stylesheet" href="${resource(dir:'themes/css', file: 'flexslider.css')} "/>
		<link rel="stylesheet" href="${resource(dir:'themes/css', file: 'main.css')} "/>

		<!-- scripts -->
		<script src="../themes/js/jquery-1.7.2.min.js"></script>
		<script src="../bootstrap/js/bootstrap.min.js"></script>				
		<script src="../themes/js/superfish.js"></script>	
		<script src="../themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="../js/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<section class="header_text sub">
			<img class="pageBanner" src="../themes/images/pageBanner.png" alt="New products" >
			<h4><span>Edit Ad Details</span></h4>
		</section>
		<section class="main-content">				
				<div class="row">
					<div class="span12">					
						
						<form action="save" method="post" class="form-stacked">
							<fieldset>
								<div id="create-postad" class="content scaffold-create" role="main">
									<g:if test="${flash.message}">
										<div class="message" role="status">${flash.message}</div>
									</g:if>
									<g:hasErrors bean="${postadInstance}">
										<ul class="errors" role="alert">
											<g:eachError bean="${postadInstance}" var="error">
												<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
											</g:eachError>
										</ul>
									</g:hasErrors>
									
									<g:form method="post"  enctype="multipart/form-data">
										<g:hiddenField name="id" value="${postadInstance?.id}" />
										<g:hiddenField name="version" value="${postadInstance?.version}" />
											<div class="accordion" id="accordion2">
										<div class="accordion-group">
											<div class="accordion-heading">
												<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">Required Information</a>
											</div>
											<div id="collapseOne" class="accordion-body in collapse">
												<div class="accordion-inner">
													<div class="row-fluid">
														<div class="span6">
																<fieldset class="form">
																	<g:render template="form"/>
																</fieldset>
														</div>
														<div class="span6">
															<h4>Ad Description</h4>
																<fieldset class="form">
																	<g:render template="formForDescription"/>
																</fieldset>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="accordion-group">
											<div class="accordion-heading">
												<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Other Ad Information</a>
											</div>
											<div id="collapseTwo" class="accordion-body collapse">
												<div class="accordion-inner">
													<div class="row-fluid">
														<div class="span6">
															<fieldset class="form">
																<g:render template="formForOptionalInformation"/>
															</fieldset>
															<fieldset class="buttons">
																<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
																<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
															</fieldset>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</g:form>
	</body>
</html>