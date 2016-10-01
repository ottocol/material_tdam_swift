//:[⬅️](@previous) [➡️](@next)
//: ## Por valor vs. por referencia
//: Las estructuras se pasan y asignan **por valor** (se hace una copia). Las clases **por referencia** (son punteros)

enum Palo {
    case bastos, copas, espadas, oros
}

class Carta {
    var valor: Int
    var palo: Palo
    //El "memberwise initializer" no existe por defecto
    init(valor:Int, palo:Palo) {
        self.valor = valor
        self.palo = palo
    }
    func desc()->String {
        return "El \(valor) de \(palo)"
    }
}
var miCarta = Carta(valor:1,palo:Palo.oros)
//REFERENCIA, no copia
var laMismaCarta = miCarta
laMismaCarta.valor = 10;
print("Modificada: \(laMismaCarta.desc())")
print("Original: \(miCarta.desc())")
//:
