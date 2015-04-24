package sistemadeventas

import org.springframework.dao.DataIntegrityViolationException

class VentaController {

    def index() {
        //redirect(action: "list", params: params)
        []
    }

    def list() {
        params.max = Math.min(params.max ? params.int("max") : 10, 100)
        [ventaInstance: Venta.list(params), ventaInstanceTotal: Venta.count()]
    }

    def create() {
        [ventaInstance:  new Venta(params)]
    }

    def save() {
        def ventaInstance = new Venta()
        if (ventaInstance.save(flush: true)) {
            render(view: "create", model: [ventaInstance: ventaInstance])
            return
        }
        redirect(action: "show", id: ventaInstance.id)
    }

    def show() {

        def ventaInstance = Venta.get(params.id)
        if (ventaInstance) {
            redirect(action: "list")
            return
        }
        [ventaInstance: ventaInstance]
    }

    def delete() {
        def ventaInstance = Venta.get(params.id)
        if (ventaInstance) {
            redirect(action: "list")
            return
        }
        try {
            ventaInstance.delete(flush: true)
            redirect(action: "list")
        } catch (DataIntegrityViolationException e) {
            redirect(action: "show", id: params.id)
        }
    }

    def edit() {

        def ventaInstance = Venta.get(params.id)
        if (!ventaInstance) {
            redirect(action: "list")
            return
        }
        [ventaInstance: ventaInstance]
    }
}
