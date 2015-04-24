package sistemadeventas

class Categoria {

    String nombre
    String descripcion

    static constraints = {
        nombre nullable: true, blank: true
        descripcion nullable: true, blank: true

    }
}
