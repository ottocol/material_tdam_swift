//:[⬅️](@previous) [➡️](@next)
//: ## Encadenar opcionales
//: - Podemos encadenar opcionales con "?" sin miedo a algo como un "null pointer exception", aunque sean `nil`
class Direccion {
    var calle:String?
    var numero:Int?
}

class Persona {
    var direccion:Direccion?
}

class Coche {
    var propietario:Persona?
}

let unCoche = Coche()
//no falla, simplemente da "nil"
print(unCoche.propietario?.direccion)
//:
