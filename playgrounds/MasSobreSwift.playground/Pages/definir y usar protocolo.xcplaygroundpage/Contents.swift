//:[⬅️](@previous) [➡️](@next)
//: ## Definir y usar un protocolo

protocol ProtocoloEjemplo {
    //Debemos decir si la propiedad es gettable y/o settable
    var descripcion: String {get set}
    func saludar()->String
    //si la función muta algún dato, debemos especificarlo
    mutating func reggaetonizar()
}

class MiClase : ProtocoloEjemplo {
    var descripcion = "Mi Clase"
    func saludar()->String {
        return "Hola soy " + self.descripcion
    }
    func reggaetonizar() {
        self.descripcion += " ya tú sabes"
    }
}

let mc = MiClase()
mc.reggaetonizar()
mc.saludar()
//:
