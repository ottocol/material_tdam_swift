//:[⬅️](@previous) [➡️](@next)
//: ## Hacer como que nada va a fallar
//: Llamamos con `try!` a una función que puede lanzar un error pero que SABEMOS (ejem) que no lo va a lanzar porque todo va a ir bien. Cuidado, si el error al final se produjera se lanzaría una excepción en tiempo de ejecución
enum ErrorImpresora : Error {
    case sinPapel,enLlamas,sinTinta(color: String)
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
miImpresora.temperatura = 20
var estado = try! miImpresora.verificarEstado()


//: