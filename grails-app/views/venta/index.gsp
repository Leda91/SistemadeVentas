
<%@ page import="sistemadeventas.Venta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'venta.label', default: 'Venta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-venta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-venta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fecha" title="${message(code: 'venta.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="cliente" title="${message(code: 'venta.cliente.label', default: 'Cliente')}" />
					
						<g:sortableColumn property="descuento" title="${message(code: 'venta.descuento.label', default: 'Descuento')}" />
					
						<g:sortableColumn property="montoFinal" title="${message(code: 'venta.montoFinal.label', default: 'Monto Final')}" />
					
						<th><g:message code="venta.proveedores.label" default="Proveedores" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ventaInstanceList}" status="i" var="ventaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ventaInstance.id}">${fieldValue(bean: ventaInstance, field: "fecha")}</g:link></td>
					
						<td>${fieldValue(bean: ventaInstance, field: "cliente")}</td>
					
						<td>${fieldValue(bean: ventaInstance, field: "descuento")}</td>
					
						<td>${fieldValue(bean: ventaInstance, field: "montoFinal")}</td>
					
						<td>${fieldValue(bean: ventaInstance, field: "proveedores")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ventaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
