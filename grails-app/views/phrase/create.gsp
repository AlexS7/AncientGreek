<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phrase.label', default: 'Phrase')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="row allPhrasesLinkRow">
			<div class="col-md-12">
				<g:link class="list" action="index"><< Εμφάνιση όλων</g:link>
			</div>
		</div>

		<div class="row createTitleRow">
			<div class="col-md-12">
				<h3>Δημιουργία Λεξης/Ορου</h3>
			</div>
		</div>

		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>

		<g:hasErrors bean="${phraseInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${phraseInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
		</g:hasErrors>
		<g:form url="[resource:phraseInstance, action:'save']" enctype="multipart/form-data" >
			<fieldset class="form">
				<g:render template="form"/>
			</fieldset>
			<fieldset class="buttons">
				<div class="row formButtonCreateRow">
					<div class="col-md-12">
						<g:submitButton name="create" class="save btn btn-primary" value='Δημιουργία' />
					</div>
				</div>
			</fieldset>
		</g:form>

	</body>
</html>
