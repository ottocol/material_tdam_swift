//:[⬅️](@previous) [➡️](@next)
//: ## Trabajar con valores opcionales
//: - Los opcionales proporcionan una forma de devolver valores en métodos que deben tratar entradas con posibles errores
import Foundation

let numeroConvertido = Int("ggg123")
if let valor=numeroConvertido {
    print(valor+200)
}
else {
    print("El valor no es correcto")
}


//: - Se usa `if` y `let` juntos para trabajar con valores opcionales.
var nombreOpcional: String? = "John Appleseed"
//Forma de que nos deje declarar sin inicializar->opcional
let saludo:String?
if let nombre = nombreOpcional {
    saludo = "Hola, \(nombre)"
}
else {
    saludo = "Hola, desconocido"
}
//:
