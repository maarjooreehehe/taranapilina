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

