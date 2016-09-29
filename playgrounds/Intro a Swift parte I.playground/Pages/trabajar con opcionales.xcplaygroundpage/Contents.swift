//: Trabajar con valores opcionales
//:- Los opcionales proporcionan una forma de devolver valores en métodos que deben tratar entradas con posibles errores

let numeroConvertido = Int("123")
//numeroConvertido no es Int, sino Int?
numeroConvertido.dynamicType
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
