<%@ page import="sistemadeventas.Venta" %>



<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'fecha', 'error')} ">
	<label for="fecha">
		<g:message code="venta.fecha.label" default="Fecha" />
		
	</label>
	<g:datePicker name="fecha" precision="day"  value="${ventaInstance?.fecha}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'cliente', 'error')} ">
	<label for="cliente">
		<g:message code="venta.cliente.label" default="Cliente" />
		
	</label>
	<g:field name="cliente" type="number" value="${ventaInstance.cliente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'descuento', 'error')} ">
	<label for="descuento">
		<g:message code="venta.descuento.label" default="Descuento" />
		
	</label>
	<g:textField name="descuento" value="${ventaInstance?.descuento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'montoFinal', 'error')} ">
	<label for="montoFinal">
		<g:message code="venta.montoFinal.label" default="Monto Final" />
		
	</label>
	<g:field name="montoFinal" value="${fieldValue(bean: ventaInstance, field: 'montoFinal')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'proveedores', 'error')} required">
	<label for="proveedores">
		<g:message code="venta.proveedores.label" default="Proveedores" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="proveedores" name="proveedores.id" from="${sistemadeventas.Proveedor.list()}" optionKey="id" required="" value="${ventaInstance?.proveedores?.id}" class="many-to-one"/>

</div>

