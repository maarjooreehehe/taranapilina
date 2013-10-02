<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'themes/images', file: 'shopping_cart_red.png')}" type="image/x-icon">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		
		
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
	
	<header class = "jumbotron subhead" id = "overview">
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<g:form url='[controller: "postad", action: "search"]' id="searchableForm" name="searchableForm" method="get">
						<g:textField name="q" class="input-block-level search-query" value="${params.q}" size="50" placeholder="SEARCH"/>
					</g:form>
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							<li class="current_page_item"><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
							<li><g:link controller="account" action="login">Login</a></g:link></li>
						</ul>
					</div>
				</div>
				
			</div>
			
		</div>
		
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">
			
					<a class="home" href="${createLink(uri: '/')}" class="logo pull-left"><img src="${resource(dir:'themes/images', file:'logo.png')}" ></a>
					
					<nav id="menu" class="pull-right">
						<ul>
							<li><g:link controller="postad" action="list">View All Ads</g:link></li>
							<li><a href="#">Categories</a>
								<ul>									
									<li><a href="#">Real State</a></li>
									<li><a href="#">Phones</a></li>
									<li><a href="#">Cars and Automotives</a></li>
								</ul>
								</li>			
							<li><a href="#">Location</a>
								<ul>									
									<li><a href="#">Manila</a></li>
									<li><a href="#">CDO</a></li>
									<li><a href="#">Iligan</a></li>
								</ul>
							</li>							
							<li><a href="#">Price Range</a>
								<ul>									
									<li><a href="#">Under P100</a></li>
									<li><a href="#">P100 to P200</a></li>
									<li><a href="#">P250 to P500</a></li>
									<li><a href="#">P500 to P1000</a></li>
									<li><a href="#">P1000 and above</a></li>
								</ul>
							</li>
							<li><a href="#">Condition</a>
								<ul>									
									<li><a href="#">Brand New</a></li>
									<li><a href="#">Second Hand (Used)</a></li>
									<li><a href="#">Defective</a></li>
								</ul>
							</li>	
						</ul>
					</nav>
				</div>
			</section>
			
		<g:layoutBody/>
		
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
		
	</body>
</html>
