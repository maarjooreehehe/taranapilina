<%@ page import="sendmail.Complaint" %>



<div class="fieldcontain ${hasErrors(bean: complaintInstance, field: 'complaint_Type', 'error')} required">
	<label for="complaint_Type">
		<g:message code="complaint.complaint_Type.label" default="Complaint Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="complaint_Type" from="${complaintInstance.constraints.complaint_Type.inList}" required="" value="${complaintInstance?.complaint_Type}" valueMessagePrefix="complaint.complaint_Type"/>
</div>

<div class="fieldcontain ${hasErrors(bean: complaintInstance, field: 'complaint', 'error')} ">
	<label for="complaint">
		<g:message code="complaint.complaint.label" default="Complaint" />
		
	</label>
	<g:textArea name="complaint" rows="5" cols="40" value="${complaintInstance?.complaint}"/>
	
</div>

