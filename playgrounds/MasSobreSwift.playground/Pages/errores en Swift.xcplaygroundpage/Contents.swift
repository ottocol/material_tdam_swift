//: ## Errores en Swift
//: - Cualquier cosa que sea conforme al protocolo `Error`. Los `enums` son especialmente apropiados para representar errores
enum ErrorImpresora : Error {
    case sinPapel
    case enLLamas
    case sinTinta(color: String)
}

//: 
throw ErrorImpresora.sinTinta(color: "Rojo")
//: [Next](@next)
