<%@ page import="classifiedads.Postad" %>



<div class="fieldcontain ${hasErrors(bean: postadInstance, field: 'adname', 'error')} required">
	<label for="adname">
		What are you selling or offering?
	</label>
	<g:textField name="adname" required="" value="${postadInstance?.adname}" placeholder="Ad Title" class="input-xlarge"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postadInstance, field: 'price', 'error')} required">
	<label for="price">
		Price
	</label>
	<g:field name="price" value="${fieldValue(bean: postadInstance, field: 'price')}" class="input-xlarge"/>
</div>
</br>


<div class="fieldcontain ${hasErrors(bean: postadInstance, field: 'contactNo', 'error')} required">
	<label for="contactNo">
		Seller's Contact Number
	</label>
	<g:textField name="contactNo" maxlength="12" required="" value="${postadInstance?.contactNo}" class="input-xlarge"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postadInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="postad.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="location" from="${postadInstance.constraints.location.inList}" required="" value="${postadInstance?.location}" valueMessagePrefix="postad.location" class="input-xlarge" />
</div>

<div class="fieldcontain ${hasErrors(bean: postadInstance, field: 'condition', 'error')} required">
	<label for="condition">
		<g:message code="postad.condition.label" default="Condition" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="condition" from="${postadInstance.constraints.condition.inList}" required="" value="${postadInstance?.condition}" valueMessagePrefix="postad.condition" class="input-xlarge" />
</div>


<div class="fieldcontain ${hasErrors(bean: postadInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="postad.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="category" from="${postadInstance.constraints.category.inList}" required="" value="${postadInstance?.category}" valueMessagePrefix="postad.category" class="input-xlarge"/>
</div>






	

