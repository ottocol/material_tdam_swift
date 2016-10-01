//: # Inicializadores
//: Se definen con `init` y no devuelven nada
class Figura {
    var numeroDeLados = 0
    init(lados:Int) {
        self.numeroDeLados = lados
    }
    func descripcion() -> String {
        return "Una figura con \(numeroDeLados) lados."
    }
}
let hexagono = Figura(lados:6);
//:
