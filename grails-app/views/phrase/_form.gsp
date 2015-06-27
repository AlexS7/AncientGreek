<%@ page import="alrosh7.Phrase" %>



<div class="fieldcontain ${hasErrors(bean: phraseInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="phrase.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="value" maxlength="50" required="" value="${phraseInstance?.value}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phraseInstance, field: 'origin', 'error')} ">
	<label for="origin">
		<g:message code="phrase.origin.label" default="Origin" />
		
	</label>
	<g:textField name="origin" value="${phraseInstance?.origin}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phraseInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="phrase.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${phraseInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phraseInstance, field: 'citation', 'error')} ">
	<label for="citation">
		<g:message code="phrase.citation.label" default="Citation" />
		
	</label>
	<g:textField name="citation" value="${phraseInstance?.citation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phraseInstance, field: 'frenchTranslation', 'error')} ">
	<label for="frenchTranslation">
		<g:message code="phrase.frenchTranslation.label" default="French Translation" />
		
	</label>
	<g:textField name="frenchTranslation" value="${phraseInstance?.frenchTranslation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phraseInstance, field: 'germanTranslation', 'error')} ">
	<label for="germanTranslation">
		<g:message code="phrase.germanTranslation.label" default="German Translation" />
		
	</label>
	<g:textField name="germanTranslation" value="${phraseInstance?.germanTranslation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phraseInstance, field: 'citationFiles', 'error')} ">
	<label for="citationFiles">
		<g:message code="phrase.citationFiles.label" default="Citation Files" />
		
	</label>

	%{--<uploadr:add name="citationFilesUploadr" path="/tmp/uploadr/citationFilesUploadr" maxSize="52428800" />--}%

	<input type="file" id="citationFilesUploadr" name="citationFilesUploadr" />
	
%{--<ul class="one-to-many">--}%
%{--<g:each in="${phraseInstance?.citationFiles?}" var="c">--}%
    %{--<li><g:link controller="citationFile" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>--}%
%{--</g:each>--}%
%{--<li class="add">--}%
%{--<g:link controller="citationFile" action="create" params="['phrase.id': phraseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'citationFile.label', default: 'CitationFile')])}</g:link>--}%
%{--</li>--}%
%{--</ul>--}%


</div>

<div class="fieldcontain ${hasErrors(bean: phraseInstance, field: 'descriptionFiles', 'error')} ">
	<label for="descriptionFiles">
		<g:message code="phrase.descriptionFiles.label" default="Description Files" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${phraseInstance?.descriptionFiles?}" var="d">
    <li><g:link controller="descriptionFile" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="descriptionFile" action="create" params="['phrase.id': phraseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'descriptionFile.label', default: 'DescriptionFile')])}</g:link>
</li>
</ul>


</div>

