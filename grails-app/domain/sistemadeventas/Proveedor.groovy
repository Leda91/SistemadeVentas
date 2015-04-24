package sistemadeventas

class Proveedor {

    String nombre
    Direccion direccion
    Integer telefono
    String paginaWeb

    static hasMany = [direcciones: Direccion]


    static constraints = {
        nombre nullable: true, blank: true
        Direccion direccion
        telefono nullable: true, blank: true
        paginaWeb nullable: true, blank: true
    }
}
