
<%@ page import="sistemadeventas.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-producto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list producto">
			
				<g:if test="${productoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="producto.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${productoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.precioActual}">
				<li class="fieldcontain">
					<span id="precioActual-label" class="property-label"><g:message code="producto.precioActual.label" default="Precio Actual" /></span>
					
						<span class="property-value" aria-labelledby="precioActual-label"><g:fieldValue bean="${productoInstance}" field="precioActual"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.stock}">
				<li class="fieldcontain">
					<span id="stock-label" class="property-label"><g:message code="producto.stock.label" default="Stock" /></span>
					
						<span class="property-value" aria-labelledby="stock-label"><g:fieldValue bean="${productoInstance}" field="stock"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.categorias}">
				<li class="fieldcontain">
					<span id="categorias-label" class="property-label"><g:message code="producto.categorias.label" default="Categorias" /></span>
					
						<span class="property-value" aria-labelledby="categorias-label"><g:link controller="categoria" action="show" id="${productoInstance?.categorias?.id}">${productoInstance?.categorias?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.proveedores}">
				<li class="fieldcontain">
					<span id="proveedores-label" class="property-label"><g:message code="producto.proveedores.label" default="Proveedores" /></span>
					
						<g:each in="${productoInstance.proveedores}" var="p">
						<span class="property-value" aria-labelledby="proveedores-label"><g:link controller="proveedor" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
