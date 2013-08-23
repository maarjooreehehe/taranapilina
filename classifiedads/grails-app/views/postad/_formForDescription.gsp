<%@ page import="classifiedads.Postad" %>

<div class="fieldcontain ${hasErrors(bean: postadInstance, field: 'description', 'error')} ">

	<g:textArea rows="10" id="textarea"  name="description" value="${postadInstance?.description}" class="input-xlarge"/>
</div>

