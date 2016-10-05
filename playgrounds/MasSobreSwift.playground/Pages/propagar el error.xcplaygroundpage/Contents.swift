//:[⬅️](@previous) [➡️](@next)
//:[⬅️](@previous) [➡️](@next)
//: ## Propagar el error
//: Podemos especificar que una función lanza errores marcándola con `throws`
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

func miFuncion() throws {
  var miImpresora = Impresora()
  miImpresora.temperatura = 100
  try miImpresora.verificarEstado()
}
//: [Next](@next)
