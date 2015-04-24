<%@ page import="sistemadeventas.Direccion" %>



<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'calle', 'error')} ">
	<label for="calle">
		<g:message code="direccion.calle.label" default="Calle" />
		
	</label>
	<g:textField name="calle" value="${direccionInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="direccion.numero.label" default="Numero" />
		
	</label>
	<g:field name="numero" type="number" value="${direccionInstance.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'comunidad', 'error')} ">
	<label for="comunidad">
		<g:message code="direccion.comunidad.label" default="Comunidad" />
		
	</label>
	<g:textField name="comunidad" value="${direccionInstance?.comunidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'ciudad', 'error')} ">
	<label for="ciudad">
		<g:message code="direccion.ciudad.label" default="Ciudad" />
		
	</label>
	<g:textField name="ciudad" value="${direccionInstance?.ciudad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'clientes', 'error')} required">
	<label for="clientes">
		<g:message code="direccion.clientes.label" default="Clientes" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="clientes" name="clientes.id" from="${sistemadeventas.Cliente.list()}" optionKey="id" required="" value="${direccionInstance?.clientes?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'proveedores', 'error')} required">
	<label for="proveedores">
		<g:message code="direccion.proveedores.label" default="Proveedores" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="proveedores" name="proveedores.id" from="${sistemadeventas.Proveedor.list()}" optionKey="id" required="" value="${direccionInstance?.proveedores?.id}" class="many-to-one"/>

</div>

