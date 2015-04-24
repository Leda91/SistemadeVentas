<%@ page import="sistemadeventas.Proveedor" %>



<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="proveedor.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${proveedorInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="proveedor.telefono.label" default="Telefono" />
		
	</label>
	<g:field name="telefono" type="number" value="${proveedorInstance.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'paginaWeb', 'error')} ">
	<label for="paginaWeb">
		<g:message code="proveedor.paginaWeb.label" default="Pagina Web" />
		
	</label>
	<g:textField name="paginaWeb" value="${proveedorInstance?.paginaWeb}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="proveedor.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="direccion" name="direccion.id" from="${sistemadeventas.Direccion.list()}" optionKey="id" required="" value="${proveedorInstance?.direccion?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direcciones', 'error')} ">
	<label for="direcciones">
		<g:message code="proveedor.direcciones.label" default="Direcciones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${proveedorInstance?.direcciones?}" var="d">
    <li><g:link controller="direccion" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="direccion" action="create" params="['proveedor.id': proveedorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'direccion.label', default: 'Direccion')])}</g:link>
</li>
</ul>


</div>

