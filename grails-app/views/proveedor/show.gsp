
<%@ page import="sistemadeventas.Proveedor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'proveedor.label', default: 'Proveedor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-proveedor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-proveedor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list proveedor">
			
				<g:if test="${proveedorInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="proveedor.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${proveedorInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proveedorInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="proveedor.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${proveedorInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proveedorInstance?.paginaWeb}">
				<li class="fieldcontain">
					<span id="paginaWeb-label" class="property-label"><g:message code="proveedor.paginaWeb.label" default="Pagina Web" /></span>
					
						<span class="property-value" aria-labelledby="paginaWeb-label"><g:fieldValue bean="${proveedorInstance}" field="paginaWeb"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proveedorInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="proveedor.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:link controller="direccion" action="show" id="${proveedorInstance?.direccion?.id}">${proveedorInstance?.direccion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${proveedorInstance?.direcciones}">
				<li class="fieldcontain">
					<span id="direcciones-label" class="property-label"><g:message code="proveedor.direcciones.label" default="Direcciones" /></span>
					
						<g:each in="${proveedorInstance.direcciones}" var="d">
						<span class="property-value" aria-labelledby="direcciones-label"><g:link controller="direccion" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:proveedorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${proveedorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
