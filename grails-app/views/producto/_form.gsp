<%@ page import="sistemadeventas.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="producto.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${productoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'precioActual', 'error')} ">
	<label for="precioActual">
		<g:message code="producto.precioActual.label" default="Precio Actual" />
		
	</label>
	<g:field name="precioActual" value="${fieldValue(bean: productoInstance, field: 'precioActual')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'stock', 'error')} ">
	<label for="stock">
		<g:message code="producto.stock.label" default="Stock" />
		
	</label>
	<g:field name="stock" type="number" value="${productoInstance.stock}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'categorias', 'error')} required">
	<label for="categorias">
		<g:message code="producto.categorias.label" default="Categorias" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categorias" name="categorias.id" from="${sistemadeventas.Categoria.list()}" optionKey="id" required="" value="${productoInstance?.categorias?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'proveedores', 'error')} ">
	<label for="proveedores">
		<g:message code="producto.proveedores.label" default="Proveedores" />
		
	</label>
	<g:select name="proveedores" from="${sistemadeventas.Proveedor.list()}" multiple="multiple" optionKey="id" size="5" value="${productoInstance?.proveedores*.id}" class="many-to-many"/>

</div>

