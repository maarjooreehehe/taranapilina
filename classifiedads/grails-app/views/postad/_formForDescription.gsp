<%@ page import="classifiedads.Postad" %>

<div class="fieldcontain ${hasErrors(bean: postadInstance, field: 'description', 'error')} ">

	<g:textArea rows="10" id="textarea"  name="description" value="${postadInstance?.description}" class="input-xlarge"/>
</div>

</br>


	<td>Advertisement Picture (2MB)</td></br>
	<td><input type="file" name="itemPicture" input tabindex="9" class="btn btn-inverse large" /></td>

