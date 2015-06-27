
<%@ page import="alrosh7.CitationFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'citationFile.label', default: 'CitationFile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-citationFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-citationFile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'citationFile.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="pathToFile" title="${message(code: 'citationFile.pathToFile.label', default: 'Path To File')}" />
					
						<th><g:message code="citationFile.phrase.label" default="Phrase" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${citationFileInstanceList}" status="i" var="citationFileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${citationFileInstance.id}">${fieldValue(bean: citationFileInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: citationFileInstance, field: "pathToFile")}</td>
					
						<td>${fieldValue(bean: citationFileInstance, field: "phrase")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${citationFileInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
