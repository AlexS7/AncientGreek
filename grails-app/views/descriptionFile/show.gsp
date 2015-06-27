
<%@ page import="alrosh7.DescriptionFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'descriptionFile.label', default: 'DescriptionFile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-descriptionFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-descriptionFile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list descriptionFile">
			
				<g:if test="${descriptionFileInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="descriptionFile.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${descriptionFileInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${descriptionFileInstance?.pathToFile}">
				<li class="fieldcontain">
					<span id="pathToFile-label" class="property-label"><g:message code="descriptionFile.pathToFile.label" default="Path To File" /></span>
					
						<span class="property-value" aria-labelledby="pathToFile-label"><g:fieldValue bean="${descriptionFileInstance}" field="pathToFile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${descriptionFileInstance?.phrase}">
				<li class="fieldcontain">
					<span id="phrase-label" class="property-label"><g:message code="descriptionFile.phrase.label" default="Phrase" /></span>
					
						<span class="property-value" aria-labelledby="phrase-label"><g:link controller="phrase" action="show" id="${descriptionFileInstance?.phrase?.id}">${descriptionFileInstance?.phrase?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:descriptionFileInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${descriptionFileInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
