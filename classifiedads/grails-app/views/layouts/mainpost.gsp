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
		
		
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
	<g:if test="${!session.username}">
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
							<g:if test="${!session.username}">
								<li><g:link controller="account" action="login">Login</a></g:link></li>					
							</g:if>
							<li><g:link controller="account" action="create">Register</g:link></li>		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">
					
					<a href="${createLink(uri: '/')}"><img class="logo pull-left" src="${resource(dir:'themes/images', file: 'logo.png')}" ></a>
					
					
					<nav id="menu" class="pull-right">
						<!-- <ul>
							<li><g:link controller="postad" action="list">View All Ads</g:link></li>
							<li><a>Categories</a>
								<ul>	
									<li><g:link controller="postad" action="search" params="[q: 'category: Appliances']">Appliances</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Books']">Books</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Clothing and Accessories']">Clothing and Accessories</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Electronics']">Electronics</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Furniture']">Furniture</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Games']">Games</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Health and Beauty']">PHealth and Beauty</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Music']">Music</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Office and School Supplies']">Office and School Supplies</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Outdoors and Gardens']">Outdoors and Gardens</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Pets']">Pets</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Phones and Handhelds']">Phones and Handhelds</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Souvenirs and Giveaways']">Souvenirs and Giveaways</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Sports and Hobbies']">Sports and Hobbies</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Tools']">Tools</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Cars']">Cars</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: House and Lot']">House and Lot</g:link></li>
								</ul>
							</li>
							<li><a>Location</a>
								<ul>	
									<li><g:link controller="postad" action="search" params="[q: 'location: Cagayan de Oro']">Cagayan de Oro</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Cebu']">Cebu</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Davao']">Davao</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Iligan City']">Iligan City</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Metro Manila']">Metro Manila</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Others']">Others</g:link></li>
								</ul>
							</li>	
							<li><a>Condition</a>
								<ul>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Brand New']">Brand New</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Second Hand (Used)']">Second Hand (Used)</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Defective']">Defective</g:link></li>
								</ul>
							</li>
						</ul> -->
					</nav>
				</div>
			</section>
			
		<g:layoutBody/>
		
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
		</g:if>
		<g:else>
		<header class = "jumbotron subhead" id = "overview">
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<g:form url='[controller: "postad", action: "search"]' id="searchableForm" name="searchableForm" method="get">
						<g:textField name="q" class="input-block-level search-query" value="${params.q}" size="50" placeholder="SEARCH"/>
					</g:form>
				</div>
				<g:if test="${session.username == 'supadmin'}">
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">
							<g:hiddenField name="id" value="${accountInstance?.id}" />
							<li>Hello ${session.username}!</li>
							<li class="current_page_item"><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
							<li><g:link controller="account" action="logout">Logout</a></g:link></li>
						</ul>
					</div>
				</div>
				</g:if>
				<g:else>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">
							<g:hiddenField name="id" value="${accountInstance?.id}" />
							<li>Hello ${session.username}!</li>
							<li class="current_page_item"><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
							<li><g:link controller="postad" action="create">Post Ad</a></g:link></li>
							<li><g:link controller="account" action="logout">Logout</a></g:link></li>
						</ul>
					</div>
				</div>
				</g:else>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">
					
					<a href="${createLink(uri: '/')}"><img class="logo pull-left" src="${resource(dir:'themes/images', file: 'logo.png')}" ></a>
					
					
					<nav id="menu" class="pull-right">
						<ul>
							<li><g:link controller="postad" action="list">View All Ads</g:link></li>
							<li><a>Categories</a>
								<ul>	
									<li><g:link controller="postad" action="search" params="[q: 'category: Appliances']">Appliances</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Books']">Books</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Clothing and Accessories']">Clothing and Accessories</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Electronics']">Electronics</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Furniture']">Furniture</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Games']">Games</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Health and Beauty']">PHealth and Beauty</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Music']">Music</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Office and School Supplies']">Office and School Supplies</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Outdoors and Gardens']">Outdoors and Gardens</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Pets']">Pets</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Phones and Handhelds']">Phones and Handhelds</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Souvenirs and Giveaways']">Souvenirs and Giveaways</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Sports and Hobbies']">Sports and Hobbies</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Tools']">Tools</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: Cars']">Cars</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'category: House and Lot']">House and Lot</g:link></li>
								</ul>
							</li>
							<li><a>Location</a>
								<ul>	
									<li><g:link controller="postad" action="search" params="[q: 'location: Cagayan de Oro']">Cagayan de Oro</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Cebu']">Cebu</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Davao']">Davao</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Iligan City']">Iligan City</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Metro Manila']">Metro Manila</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'location: Others']">Others</g:link></li>
								</ul>
							</li>	
							<li><a>Condition</a>
								<ul>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Brand New']">Brand New</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Second Hand (Used)']">Second Hand (Used)</g:link></li>
									<li><g:link controller="postad" action="search" params="[q: 'condition: Defective']">Defective</g:link></li>
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
		</g:else>
	</body>
</html>
