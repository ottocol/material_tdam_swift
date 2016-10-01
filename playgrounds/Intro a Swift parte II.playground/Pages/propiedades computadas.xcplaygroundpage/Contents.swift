//: # Propiedades calculadas
//: Desde fuera parecen valores almacenados, pero se calculan "sobre la marcha"
class Figura {
    var numeroDeLados = 0
    var descripcion: String {
        get {
            return "Una figura con \(self.numeroDeLados) lados"
        }
        //Podría tener también un "set", en este caso no tiene sentido
    }
    
}
var triangulo = Figura()
triangulo.numeroDeLados = 3
print(triangulo.descripcion)
//:
