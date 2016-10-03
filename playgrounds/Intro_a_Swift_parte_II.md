---
layout: post
title: Introducción a Swift parte II
---
# Swift orientado a objetos



---

## Clases y `structs`
En lenguajes como C++, clases y `structs` son completamente diferentes. En swift se parecen mucho:
- Ambas pueden contener **propiedades** y **métodos**
- Definen **inicializadores** (== *constructores*)
- Se instancian de forma muy parecida
- Se definen como **conformes a protocolos**

Hay cosas que las clases tienen y las estructuras no:
- Herencia
- **Deinicializadores** (== destructores)
- Varias variables pueden referenciar a la misma instancia


---

## Creación y uso simple de `structs`
```swift
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
```




---

## Clases
```swift
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
```



---

## Propiedades calculadas
Desde fuera parecen valores almacenados, pero se calculan "sobre la marcha"
```swift
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
```



---

## Inicializadores
Se definen con `init` y no devuelven nada
```swift
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
```



---

---
layout: post
title: Por valor vs. por referencia
---
Las estructuras se pasan y asignan **por valor** (se hace una copia). Las clases **por referencia** (son punteros)

```swift
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
```



---

## Por valor vs. por referencia
Las estructuras se pasan y asignan **por valor** (se hace una copia). Las clases **por referencia** (son punteros)

```swift
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
```



---

## Herencia
```swift
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

```



---

