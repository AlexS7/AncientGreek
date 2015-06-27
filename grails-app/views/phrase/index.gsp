
<%@ page import="alrosh7.Phrase" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phrase.label', default: 'Phrase')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-phrase" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-phrase" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="value" title="${message(code: 'phrase.value.label', default: 'Value')}" />
					
						<g:sortableColumn property="origin" title="${message(code: 'phrase.origin.label', default: 'Origin')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'phrase.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="citation" title="${message(code: 'phrase.citation.label', default: 'Citation')}" />
					
						<g:sortableColumn property="frenchTranslation" title="${message(code: 'phrase.frenchTranslation.label', default: 'French Translation')}" />
					
						<g:sortableColumn property="germanTranslation" title="${message(code: 'phrase.germanTranslation.label', default: 'German Translation')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${phraseInstanceList}" status="i" var="phraseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${phraseInstance.id}">${fieldValue(bean: phraseInstance, field: "value")}</g:link></td>
					
						<td>${fieldValue(bean: phraseInstance, field: "origin")}</td>
					
						<td>${fieldValue(bean: phraseInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: phraseInstance, field: "citation")}</td>
					
						<td>${fieldValue(bean: phraseInstance, field: "frenchTranslation")}</td>
					
						<td>${fieldValue(bean: phraseInstance, field: "germanTranslation")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${phraseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
