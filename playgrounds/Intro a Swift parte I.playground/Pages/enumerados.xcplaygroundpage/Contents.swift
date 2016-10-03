//:[⬅️](@previous) [➡️](@next)
//: ## Enumerados
enum Direccion {
    case norte,sur,este,oeste
}

var dir = Direccion.norte
//una vez está claro que una variable tiene un tipo
//podemos poner solo el valor precedido de un "."
var otraDir : Direccion = .sur

//Un enum es un enum, NO un entero
//No obstante, un enum puede tener un valor asociado (del tipo que sea)
enum ValorCarta : Int {
 case elAs = 1, dos, tres, cuatro, cinco, ceis, siete
 case sota=10, caballo, rey
}

var unCaballo = ValorCarta.caballo
//accedemos al valor asociado
print(unCaballo.rawValue)

//¡¡¡los enums pueden tener métodos!!!
enum ValorCartaChulo : Int {
    case elAs = 1, dos, tres, cuatro, cinco, seis, siete
    case sota=10, caballo, rey
    func descripcion()->String {
        switch self {
        case .sota:
            return "sota"
        case .caballo:
            return "caballo"
        case .rey:
            return "rey"
        default:
            return String(self.rawValue)
        }
    }
}

let unaSota = ValorCartaChulo.sota
print(unaSota.descripcion())
let unAs = ValorCartaChulo.elAs
print(unAs.descripcion())
//:
