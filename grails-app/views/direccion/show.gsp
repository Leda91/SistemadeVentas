
<%@ page import="sistemadeventas.Direccion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'direccion.label', default: 'Direccion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-direccion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-direccion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list direccion">
			
				<g:if test="${direccionInstance?.calle}">
				<li class="fieldcontain">
					<span id="calle-label" class="property-label"><g:message code="direccion.calle.label" default="Calle" /></span>
					
						<span class="property-value" aria-labelledby="calle-label"><g:fieldValue bean="${direccionInstance}" field="calle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="direccion.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${direccionInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.comunidad}">
				<li class="fieldcontain">
					<span id="comunidad-label" class="property-label"><g:message code="direccion.comunidad.label" default="Comunidad" /></span>
					
						<span class="property-value" aria-labelledby="comunidad-label"><g:fieldValue bean="${direccionInstance}" field="comunidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="direccion.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:fieldValue bean="${direccionInstance}" field="ciudad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.clientes}">
				<li class="fieldcontain">
					<span id="clientes-label" class="property-label"><g:message code="direccion.clientes.label" default="Clientes" /></span>
					
						<span class="property-value" aria-labelledby="clientes-label"><g:link controller="cliente" action="show" id="${direccionInstance?.clientes?.id}">${direccionInstance?.clientes?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.proveedores}">
				<li class="fieldcontain">
					<span id="proveedores-label" class="property-label"><g:message code="direccion.proveedores.label" default="Proveedores" /></span>
					
						<span class="property-value" aria-labelledby="proveedores-label"><g:link controller="proveedor" action="show" id="${direccionInstance?.proveedores?.id}">${direccionInstance?.proveedores?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:direccionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${direccionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
