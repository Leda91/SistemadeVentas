
<%@ page import="sistemadeventas.Venta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'venta.label', default: 'Venta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-venta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-venta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list venta">
			
				<g:if test="${ventaInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="venta.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${ventaInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ventaInstance?.cliente}">
				<li class="fieldcontain">
					<span id="cliente-label" class="property-label"><g:message code="venta.cliente.label" default="Cliente" /></span>
					
						<span class="property-value" aria-labelledby="cliente-label"><g:fieldValue bean="${ventaInstance}" field="cliente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ventaInstance?.descuento}">
				<li class="fieldcontain">
					<span id="descuento-label" class="property-label"><g:message code="venta.descuento.label" default="Descuento" /></span>
					
						<span class="property-value" aria-labelledby="descuento-label"><g:fieldValue bean="${ventaInstance}" field="descuento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ventaInstance?.montoFinal}">
				<li class="fieldcontain">
					<span id="montoFinal-label" class="property-label"><g:message code="venta.montoFinal.label" default="Monto Final" /></span>
					
						<span class="property-value" aria-labelledby="montoFinal-label"><g:fieldValue bean="${ventaInstance}" field="montoFinal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ventaInstance?.proveedores}">
				<li class="fieldcontain">
					<span id="proveedores-label" class="property-label"><g:message code="venta.proveedores.label" default="Proveedores" /></span>
					
						<span class="property-value" aria-labelledby="proveedores-label"><g:link controller="proveedor" action="show" id="${ventaInstance?.proveedores?.id}">${ventaInstance?.proveedores?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:ventaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${ventaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
