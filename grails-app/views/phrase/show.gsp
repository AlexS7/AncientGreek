
<%@ page import="alrosh7.Phrase" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phrase.label', default: 'Phrase')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row allPhrasesLinkRow">
			<div class="col-md-12">
				<g:link class="list" action="index"><< Εμφάνιση όλων</g:link>
				<br>
				<g:link class="create" action="create"><< Δημιουργία Λεξης/Ορου</g:link>
			</div>
		</div>

		<div class="row showTitleRow">
			<div class="col-md-12">
				<h3>Λεξη/Ορος</h3>
			</div>
		</div>

		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>

		<g:render template="showPartial"/>

		%{--Left it for future reference--}%
		%{--<ol class="property-list phrase">--}%

			%{--<g:if test="${phraseInstance?.value}">--}%
			%{--<li class="fieldcontain">--}%
				%{--<span id="value-label" class="property-label"><g:message code="phrase.value.label" default="Value" /></span>--}%

					%{--<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${phraseInstance}" field="value"/></span>--}%

			%{--</li>--}%
			%{--</g:if>--}%

			%{--<g:if test="${phraseInstance?.origin}">--}%
			%{--<li class="fieldcontain">--}%
				%{--<span id="origin-label" class="property-label"><g:message code="phrase.origin.label" default="Origin" /></span>--}%

					%{--<span class="property-value" aria-labelledby="origin-label"><g:fieldValue bean="${phraseInstance}" field="origin"/></span>--}%

			%{--</li>--}%
			%{--</g:if>--}%

			%{--<g:if test="${phraseInstance?.description}">--}%
			%{--<li class="fieldcontain">--}%
				%{--<span id="description-label" class="property-label"><g:message code="phrase.description.label" default="Description" /></span>--}%

					%{--<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${phraseInstance}" field="description"/></span>--}%

			%{--</li>--}%
			%{--</g:if>--}%

			%{--<g:if test="${phraseInstance?.citation}">--}%
			%{--<li class="fieldcontain">--}%
				%{--<span id="citation-label" class="property-label"><g:message code="phrase.citation.label" default="Citation" /></span>--}%

					%{--<span class="property-value" aria-labelledby="citation-label"><g:fieldValue bean="${phraseInstance}" field="citation"/></span>--}%

			%{--</li>--}%
			%{--</g:if>--}%

			%{--<g:if test="${phraseInstance?.frenchTranslation}">--}%
			%{--<li class="fieldcontain">--}%
				%{--<span id="frenchTranslation-label" class="property-label"><g:message code="phrase.frenchTranslation.label" default="French Translation" /></span>--}%

					%{--<span class="property-value" aria-labelledby="frenchTranslation-label"><g:fieldValue bean="${phraseInstance}" field="frenchTranslation"/></span>--}%

			%{--</li>--}%
			%{--</g:if>--}%

			%{--<g:if test="${phraseInstance?.germanTranslation}">--}%
			%{--<li class="fieldcontain">--}%
				%{--<span id="germanTranslation-label" class="property-label"><g:message code="phrase.germanTranslation.label" default="German Translation" /></span>--}%

					%{--<span class="property-value" aria-labelledby="germanTranslation-label"><g:fieldValue bean="${phraseInstance}" field="germanTranslation"/></span>--}%

			%{--</li>--}%
			%{--</g:if>--}%

			%{--<g:if test="${phraseInstance?.citationFiles}">--}%
			%{--<li class="fieldcontain">--}%
				%{--<span id="citationFiles-label" class="property-label"><g:message code="phrase.citationFiles.label" default="Citation Files" /></span>--}%

					%{--<g:each in="${phraseInstance.citationFiles}" var="c">--}%
					%{--<span class="property-value" aria-labelledby="citationFiles-label"><g:link controller="citationFile" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>--}%
					%{--<span class="property-value" aria-labelledby="citationFiles-label"><g:link controller="citationFile" action="download" id="${c.id}">Download</g:link></span>--}%
					%{--</g:each>--}%

			%{--</li>--}%
			%{--</g:if>--}%

			%{--<g:if test="${phraseInstance?.descriptionFiles}">--}%
			%{--<li class="fieldcontain">--}%
				%{--<span id="descriptionFiles-label" class="property-label"><g:message code="phrase.descriptionFiles.label" default="Description Files" /></span>--}%

					%{--<g:each in="${phraseInstance.descriptionFiles}" var="d">--}%
					%{--<span class="property-value" aria-labelledby="descriptionFiles-label"><g:link controller="descriptionFile" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>--}%
					%{--</g:each>--}%

			%{--</li>--}%
			%{--</g:if>--}%

		%{--</ol>--}%
		<g:form url="[resource:phraseInstance, action:'delete']" method="DELETE">
			<fieldset class="buttons">
				%{--Moved below for now--}%
				%{--<g:link class="edit" action="edit" resource="${phraseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
				<div class="row formButtonCreateRow">
					<div class="col-md-12">
						<g:link class="edit btn btn-warning" action="edit" resource="${phraseInstance}">Επεξεργασία</g:link>
						<g:actionSubmit class="delete btn btn-danger" action="delete" value="Διαγραφη" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</div>
			</fieldset>
		</g:form>

	</body>
</html>
