//: ## Creación y uso simple de `structs`
enum Palo {
    case bastos, copas, espadas, oros
}
struct Carta {
    var valor: Int
    var palo: Palo
    func descripcion() ->String {
        return "El \(valor) de \(palo)"
    }
}
//inicializador definido automáticamente, con las propiedades
var miCarta = Carta(valor:1, palo:Palo.oros)
print(miCarta.descripcion())
//: 

