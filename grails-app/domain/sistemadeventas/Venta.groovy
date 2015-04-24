package sistemadeventas

class Venta {

    Date fecha
    Integer cliente
    String descuento
    BigDecimal montoFinal

    static belongsTo = [proveedores: Proveedor]

    static constraints = {
        fecha nullable: true, blank: true
        cliente nullable: true, blank: true
        descuento nullable: true, blank: true
        montoFinal nullable: true, blank: true

    }
}
