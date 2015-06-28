<%@ page import="alrosh7.Phrase" %>

<div class="formWrapper">
<div class="row valueFieldRow">
	<div class="col-md-12">
		<div class="valueField">
			<div ${hasErrors(bean: phraseInstance, field: 'value', 'error')} >
				<div class="valueLabel">Καταχωρηση Λεξης/Ορου (1ο πεδιον)</div>
				<g:textField name="value" maxlength="50" value="${phraseInstance?.value}"/>
			</div>
		</div>
	</div>
</div>

<div class="row originRow">
	<div class="col-md-12 originDataWrapper">
		<div ${hasErrors(bean: phraseInstance, field: 'origin', 'error')} >
			<div class="originLabel">Προελευση λεξης (2ο πεδιον)</div>
			<g:textArea name="origin" value="${phraseInstance?.origin}" class="originTextArea"/>
		</div>
	</div>
</div>

<div class="row citationDescriptionRow">
	<div class="col-md-6 citationDataWrapper">
		<div ${hasErrors(bean: phraseInstance, field: 'citation', 'error')} >
			<div class="citationLabel">Αναφορα Πηγης (4ο πεδιον)</div>
			<g:textArea name="citation" value="${phraseInstance?.citation}" class="citationTextArea"/>
		</div>
		<div ${hasErrors(bean: phraseInstance, field: 'citationFiles', 'error')} class="citationFilesUpload" ">
			<div class="citationFilesUploadLabel">Σχετικα Αρχεια</div>
			<div class="citationFilesUploaderWrapper">
				<input type="file" id="citationFilesUploader" name="citationFilesUploader" class="citationFileUploader"/>
			</div>
		</div>
		<div class="addCitationFile">Κλικ εδω για εισαγωγη επιπροσθετου αρχειου</div>
	</div>

	<div class="col-md-6 descriptionDataWrapper">
		<div ${hasErrors(bean: phraseInstance, field: 'description', 'error')} >
			<div class="descriptionLabel">Ερμηνεια Λεξης (3ον πεδιον)</div>
			<g:textArea name="description" value="${phraseInstance?.description}" class="descriptionTextArea"/>
		</div>
		<div ${hasErrors(bean: phraseInstance, field: 'descriptionFiles', 'error')} class="descriptionFilesUpload" >
			<div class="descriptionFilesUploadLabel">Σχετικα Αρχεια</div>
			<div class="descriptionFilesUploadWrapper">
				<input type="file" id="descriptionFilesUploader" name="descriptionFilesUploader" class="descriptionFileUploader" />
			</div>
		</div>
		<div class="addDescFile">Κλικ εδω για εισαγωγη επιπροσθετου αρχειου</div>
	</div>
</div>
</div>

%{--Will be used in the second page--}%

%{--<div ${hasErrors(bean: phraseInstance, field: 'frenchTranslation', 'error')} ">--}%
%{--<g:message code="phrase.frenchTranslation.label" default="French Translation" />--}%
%{--<g:textField name="frenchTranslation" value="${phraseInstance?.frenchTranslation}"/>--}%
%{--</div>--}%

%{--<div ${hasErrors(bean: phraseInstance, field: 'germanTranslation', 'error')} ">--}%
%{--<g:message code="phrase.germanTranslation.label" default="German Translation" />--}%
%{--<g:textField name="germanTranslation" value="${phraseInstance?.germanTranslation}"/>--}%
%{--</div>--}%

%{--For future reference if needed--}%

%{--<ul class="one-to-many">--}%
%{--<g:each in="${phraseInstance?.citationFiles?}" var="c">--}%
%{--<li><g:link controller="citationFile" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>--}%
%{--</g:each>--}%
%{--<li class="add">--}%
%{--<g:link controller="citationFile" action="create" params="['phrase.id': phraseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'citationFile.label', default: 'CitationFile')])}</g:link>--}%
%{--</li>--}%
%{--</ul>--}%

%{--<ul class="one-to-many">--}%
%{--<g:each in="${phraseInstance?.descriptionFiles?}" var="d">--}%
%{--<li><g:link controller="descriptionFile" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>--}%
%{--</g:each>--}%
%{--<li class="add">--}%
%{--<g:link controller="descriptionFile" action="create" params="['phrase.id': phraseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'descriptionFile.label', default: 'DescriptionFile')])}</g:link>--}%
%{--</li>--}%
%{--</ul>--}%