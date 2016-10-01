//: ## Clases
class Figura {
    var numeroDeLados = 0
    func descripcion() -> String {
        return "Una figura con \(numeroDeLados) lados."
    }
}
//Inicializador "por defecto"
//A diferencia de C++, Java, etc no se usa "new"
var cuadrado = Figura()
cuadrado.numeroDeLados = 4
print(cuadrado.descripcion())
//:
