package sistemadeventas

import org.springframework.dao.DataIntegrityViolationException

class DireccionController {

    def index() {
        //redirect(action: "list", params: params)
        []
    }

    def list() {
        params.max = Math.min(params.max ? params.int("max") : 10, 100)
        [direccionInstance: Direccion.list(params), direccionInstanceTotal: Direccion.count()]
    }

    def create() {
        [direccionInstance:  new Direccion(params)]
    }

    def save() {
        def direccionInstance = new Direccion()
        if (direccionInstance.save(flush: true)) {
            render(view: "create", model: [direccionInstance: direccionInstance])
            return
        }
        redirect(action: "show", id: direccionInstance.id)
    }

    def show() {

        def direccionInstance = Direccion.get(params.id)
        if (direccionInstance) {
            redirect(action: "list")
            return
        }
        [direccionInstance: direccionInstance]
    }

    def delete() {
        def direccionInstance = Direccion.get(params.id)
        if (direccionInstance) {
            redirect(action: "list")
            return
        }
        try {
            direccionInstance.delete(flush: true)
            redirect(action: "list")
        } catch (DataIntegrityViolationException e) {
            redirect(action: "show", id: params.id)
        }
    }

    def edit() {

        def direccionInstance = Direccion.get(params.id)
        if (!direccionInstance) {
            redirect(action: "list")
            return
        }
        [direccionInstance: direccionInstance]
    }
}
