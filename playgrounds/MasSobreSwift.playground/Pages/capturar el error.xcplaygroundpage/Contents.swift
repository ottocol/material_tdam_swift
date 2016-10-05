//:[⬅️](@previous) [➡️](@next)
//: ## Manejar el error con do..catch
//: Podemos especificar que una función lanza errores marcándola con `throws`
enum ErrorImpresora : Error {
    case sinPapel
    case enLlamas
    case sinTinta(color: String)
}

class Impresora {
    var temperatura=0.0
    var papel=0
    func verificarEstado() throws -> String {
        if self.temperatura>80 {
            throw ErrorImpresora.enLlamas
        }
        if papel==0 {
            throw ErrorImpresora.sinPapel
        }
        
        return "OK"
    }
}

do {
    var miImpresora = Impresora()
    miImpresora.temperatura = 200
    try miImpresora.verificarEstado()
}
catch ErrorImpresora.enLlamas {
    print("SOCORROOOOOOOO!!!")
}
catch {
    print("pasa algo malo con la impresora")
}
//: