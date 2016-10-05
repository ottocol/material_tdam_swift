//:[⬅️](@previous) [➡️](@next)
//: ## Errores en Swift
//: - Cualquier cosa que sea conforme al protocolo `Error`. Los `enums` son especialmente apropiados para representar errores
enum ErrorImpresora : Error {
    case sinPapel
    case enLLamas
    case sinTinta(color: String)
}

//: - Para señalar que se ha producido un error, lo lanzamos con `throw`
throw ErrorImpresora.sinTinta(color: "Rojo")
//: 
