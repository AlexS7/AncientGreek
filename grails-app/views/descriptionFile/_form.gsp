<%@ page import="alrosh7.DescriptionFile" %>



<div class="fieldcontain ${hasErrors(bean: descriptionFileInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="descriptionFile.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${descriptionFileInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: descriptionFileInstance, field: 'pathToFile', 'error')} required">
	<label for="pathToFile">
		<g:message code="descriptionFile.pathToFile.label" default="Path To File" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pathToFile" required="" value="${descriptionFileInstance?.pathToFile}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: descriptionFileInstance, field: 'phrase', 'error')} required">
	<label for="phrase">
		<g:message code="descriptionFile.phrase.label" default="Phrase" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="phrase" name="phrase.id" from="${alrosh7.Phrase.list()}" optionKey="id" required="" value="${descriptionFileInstance?.phrase?.id}" class="many-to-one"/>

</div>

