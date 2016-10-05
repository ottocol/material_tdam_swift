//:[⬅️](@previous) [➡️](@next)
//: ## Convertir el error en un opcional
//: Si una función a la que llamamos con `try?` nos lanza un error, este se "parará" pero la función devolverá `nil`. O sea, en lugar de lo que esté devolviendo la función pasa a devolver un opcional de ese tipo
//:
enum ErrorImpresora : Error {
    case sinPapel
    case enLlamas
    case sinTinta(color: String)
}

class Impresora {
    var temperatura=0.0
    func verificarEstado() throws -> String {
        if self.temperatura>80 {
            throw ErrorImpresora.enLlamas
        }
        return "OK"
    }
}

var miImpresora = Impresora()
miImpresora.temperatura = 200
var estado = try? miImpresora.verificarEstado()


