//:[⬅️](@previous) [➡️](@next)
//: # Por valor vs. por referencia
//: Las estructuras se pasan y asignan **por valor** (se hace una copia). Las clases **por referencia** (son punteros)

enum Palo {
    case bastos, copas, espadas, oros
}

struct Carta {
    var valor: Int
    var palo: Palo
}
var miCarta = Carta(valor:1,palo:Palo.oros)
//COPIA, no referencia
var laMismaCarta = miCarta
laMismaCarta.valor = 10;
print("Modificada: \(laMismaCarta)")
print("Original: \(miCarta)")
//:
