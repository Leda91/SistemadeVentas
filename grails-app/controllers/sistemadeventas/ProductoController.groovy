package sistemadeventas

import org.springframework.dao.DataIntegrityViolationException

class ProductoController {

    def index() {
        //redirect(action: "list", params: params)
        []
    }

    def list() {
        params.max = Math.min(params.max ? params.int("max") : 10, 100)
        [productoInstance: Producto.list(params), productoInstanceTotal: Producto.count()]
    }

    def create() {
        [productoInstance: new Producto(params)]
    }

    def save() {
        def productoInstance = new Producto()
        if (productoInstance.save(flush: true)) {
            render(view: "create", model: [productoInstance: productoInstance])
            return
        }
        redirect(action: "show", id: productoInstance.id)
    }

    def show() {

        def productoInstance = Producto.get(params.id)
        if (productoInstance) {
            redirect(action: "list")
            return
        }
        [productoInstance: productoInstance]
    }

    def delete() {
        def productoInstance = Producto.get(params.id)
        if (productoInstance) {
            redirect(action: "list")
            return
        }
        try {
            productoInstance.delete(flush: true)
            redirect(action: "list")
        } catch (DataIntegrityViolationException e) {
            redirect(action: "show", id: params.id)
        }
    }

    def edit() {

        def productoInstance = Producto.get(params.id)
        if (!productoInstance) {
            redirect(action: list)
            return
        }
        [productoInstance: productoInstance]
    }
}

