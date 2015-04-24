package sistemadeventas

class Cliente {

    String nombre
    Direccion direccion
    Integer telefonos

    static hasMany = [direcciones: Direccion]

    static constraints = {
        nombre nullable: true, blank: true
        telefonos nullable: true, blank: true
        Direccion direccion
    }
}
