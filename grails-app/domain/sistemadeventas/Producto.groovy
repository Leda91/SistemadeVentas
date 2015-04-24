package sistemadeventas

class Producto {

    String nombre
    BigDecimal precioActual
    Integer stock

    static belongsTo = [categorias: Categoria]
    static hasMany = [proveedores: Proveedor]


    static constraints = {
        nombre nullable:true, blank:true
        precioActual nullable:true, blank:true
        stock nullable:true, blank:true
    }
}
