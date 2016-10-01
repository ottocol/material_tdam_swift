//: # Herencia
class Vehiculo {
    var velocidad = 0
    func descripcion()->String {
       return "Viajando a \(self.velocidad) Km/h"
    }
}

var v = Vehiculo()
print(v.descripcion())


class Coche : Vehiculo {
    var marcha = 1
    override func descripcion()->String {
        return super.descripcion()+" con la marcha \(self.marcha)"
    }
}
var miCoche = Coche()
miCoche.velocidad = 20
print(miCoche.descripcion())

//:
