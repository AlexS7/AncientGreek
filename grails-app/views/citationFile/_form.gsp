<%@ page import="alrosh7.CitationFile" %>



<div class="fieldcontain ${hasErrors(bean: citationFileInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="citationFile.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${citationFileInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: citationFileInstance, field: 'pathToFile', 'error')} required">
	<label for="pathToFile">
		<g:message code="citationFile.pathToFile.label" default="Path To File" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pathToFile" required="" value="${citationFileInstance?.pathToFile}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: citationFileInstance, field: 'phrase', 'error')} required">
	<label for="phrase">
		<g:message code="citationFile.phrase.label" default="Phrase" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="phrase" name="phrase.id" from="${alrosh7.Phrase.list()}" optionKey="id" required="" value="${citationFileInstance?.phrase?.id}" class="many-to-one"/>

</div>

