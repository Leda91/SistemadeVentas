<%@ page import="sistemadeventas.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="cliente.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${clienteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telefonos', 'error')} ">
	<label for="telefonos">
		<g:message code="cliente.telefonos.label" default="Telefonos" />
		
	</label>
	<g:field name="telefonos" type="number" value="${clienteInstance.telefonos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="cliente.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="direccion" name="direccion.id" from="${sistemadeventas.Direccion.list()}" optionKey="id" required="" value="${clienteInstance?.direccion?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'direcciones', 'error')} ">
	<label for="direcciones">
		<g:message code="cliente.direcciones.label" default="Direcciones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${clienteInstance?.direcciones?}" var="d">
    <li><g:link controller="direccion" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="direccion" action="create" params="['cliente.id': clienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'direccion.label', default: 'Direccion')])}</g:link>
</li>
</ul>


</div>

