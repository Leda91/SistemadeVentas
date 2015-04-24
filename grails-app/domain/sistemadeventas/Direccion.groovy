package sistemadeventas

class Direccion {

    String calle
    Integer numero
    String comunidad
    String ciudad

    static belongsTo = [proveedores: Proveedor, clientes: Cliente]

    static constraints = {
        calle nullable: true, blank: true
        numero nullable: true, blank: true
        comunidad nullable: true, blank: true
        ciudad nullable: true, blank: true
    }
}
