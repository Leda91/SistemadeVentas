package sistemadeventas

import org.springframework.dao.DataIntegrityViolationException

class ClienteController {

    def index() {
        //redirect(action: "list", params: params)
        []
    }

    def list() {
        params.max = Math.min(params.max ? params.int("max") : 10, 100)
        [clienteInstance: Cliente.list(params), clienteInstanceTotal: Cliente.count()]
    }

    def create() {
        [clienteInstance:  new Cliente(params)]
    }

    def save() {
        def clienteInstance = new Proveedor()
        if (clienteInstance.save(flush: true)) {
            render(view: "create", model: [clienteInstance: clienteInstance])
            return
        }
        redirect(action: "show", id: clienteInstance.id)
    }

    def show() {

        def clienteInstance = Cliente.get(params.id)
        if (clienteInstance) {
            redirect(action: "list")
            return
        }
        [clienteInstance: clienteInstance]
    }

    def delete() {
        def clienteInstance = Cliente.get(params.id)
        if (clienteInstance) {
            redirect(action: "list")
            return
        }
        try {
            clienteInstance.delete(flush: true)
            redirect(action: "list")
        } catch (DataIntegrityViolationException e) {
            redirect(action: "show", id: params.id)
        }
    }

    def edit() {

        def clienteInstance = Cliente.get(params.id)
        if (!clienteInstance) {
            redirect(action: "list")
            return
        }
        [clienteInstance: clienteInstance]
    }
}
