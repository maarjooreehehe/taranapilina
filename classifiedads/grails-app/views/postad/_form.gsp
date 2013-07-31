<%@ page import="classifiedads.Postad" %>

<div class="fieldcontain ${hasErrors(bean: postadInstance, field: 'adname', 'error')} required">
	<g:textField name="adname" required="" value="${postadInstance?.adname}" placeholder="What are you selling or offering?" class="input-xlarge"/>
</div>
