<%@ page import="alrosh7.Phrase" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phrase.label', default: 'Phrase')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="row createPhraseLinkRow">
			<div class="col-md-12">
				<g:link class="create" action="create"><< Δημιουργία Λεξης/Ορου</g:link>
			</div>
		</div>

		<div class="row indexTitleRow">
			<div class="col-md-12">
				<h3>Εμφάνιση όλων λέξεων/ορών</h3>
			</div>
		</div>

		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>

		<div class="row phrasesTableRow">
			<div class="col-md-12">
				<table class="phrasesListTable table table-bordered table-hover">
					<thead>
						<tr>
							<g:sortableColumn property="value" title="Λεξη/Ορος" />
							<g:sortableColumn property="origin" title="Προελευση λεξης" />
							<g:sortableColumn property="description" title="Ερμηνεια Λεξης" />
							<g:sortableColumn property="citation" title="Αναφορα Πηγης" />
							<g:sortableColumn property="frenchTranslation" title="Γαλλικη Μεταφραση" />
							<g:sortableColumn property="germanTranslation" title="Γερμανικη Μεταφραση" />
						</tr>
					</thead>

					<tbody>
						<g:each in="${phraseInstanceList}" status="i" var="phraseInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								<td><g:link action="show" id="${phraseInstance.id}">${fieldValue(bean: phraseInstance, field: "value")}</g:link></td>
								<td>${fieldValue(bean: phraseInstance, field: "origin").take(30)}...</td>
								<td>${fieldValue(bean: phraseInstance, field: "description").take(30)}...</td>
								<td>${fieldValue(bean: phraseInstance, field: "citation").take(30)}...</td>
								<td>${fieldValue(bean: phraseInstance, field: "frenchTranslation").take(30)}</td>
								<td>${fieldValue(bean: phraseInstance, field: "germanTranslation").take(30)}</td>
							</tr>
						</g:each>
					</tbody>
				</table>
			</div>
		</div>

		<div class="pagination">
			<g:paginate total="${phraseInstanceCount ?: 0}" />
		</div>

	</body>
</html>
