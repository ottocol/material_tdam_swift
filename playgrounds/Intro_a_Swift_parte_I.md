---
layout: post
title: Introducción a Swift
---
# Tipos de datos. Control de flujo


---

## Ideas básicas
- Swift es **EL** lenguaje de desarrollo a usar para programar en iOS/OSX. Al menos el único soportado por Apple
- **Sustituye a Objective-C**, que fue **EL** lenguaje de desarrollo para Apple durante más de 30 años. No obstante, Obj-C puede seguir usándose y existen muchísimas aplicaciones escritas en él que habrá que seguir manteniendo
- Es un lenguaje **moderno y potente**, y relativamente fácil de usar para tareas sencillas pero también **complejo**, con muchas funcionalidades
- En diciembre de 2015 Apple decidió convertirlo en *open source*, lo que abre la puerta a que se use en otros entornos (p.ej. desarrollo en el servidor). Esto también ha acelerado la evolución del lenguaje



---

## Para aprender Swift...
Importante: Swift ha estado en rápida evolución desde su presentación en 2014. Como consecuencia **los cambios del Swift 1.0 al 2.0 y al 3.0 (actual) son bastante importantes**. Hay muy pocos libros "de terceros" con sintaxis Swift 3 (Swift 3.0 fue [publicado oficialmente](https://swift.org/blog/swift-3-0-released/) el 13 de septiembre de este año)
- Libro de Apple [_The Swift Programming Language_](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/) disponible en el portal de desarrolladores de Apple. También en [iBooks](https://itunes.apple.com/us/book/the-swift-programming-language/id881256329?mt=11) si tenéis un dispositivo iOS para leerlo.
- Además del libro es recomendable consultar la página de Apple con los [recursos sobre Swift](https://developer.apple.com/swift/resources/).
- Documentación de la biblioteca estándar de Swift:  [The Swift Standard Library](https://developer.apple.com/library/ios/documentation/General/Reference/SwiftStandardLibraryReference/index.html#//apple_ref/doc/uid/TP40014608)




---

## Variables y constantes
- Las variables se definen con `var`
- Las constantes con `let`. Aunque no es necesario conocer su valor en tiempo de compilación, una vez asignado no se puede cambiar
```swift
import Foundation

//Tipo declarado explícitamente
var num : Int = 5
num = 6;
//Tipo inferido: Int
let valor = 42
type(of:valor)
//Tipo inferido: Double
let valorReal = 15.7
type(of:valorReal)
//valor  = 5
let aleat = arc4random()
```



---

## Tipos e inferencia de tipos
Si asignamos un valor inicial a una variable o cte. no es necesario declarar el tipo, Swift lo puede **inferir**
```swift
let implicitInteger = 70
var implicitDouble = 70.0
let explicitDouble: Double = 70
```



---

## Conversión de tipos
Debe ser explícita, no se hace implícitamente
```swift
var mensaje = " botellas de ron"
var num = 55
print(String(num)+mensaje)
```



---

## Incluir expresiones en una cadena
```swift
let manzanas = 3
let naranjas = 5
let resumenManzanas = "Tengo \(manzanas) manzanas."
let resumenFrutas = "Tengo \(manzanas + naranjas) frutas."
```



---

## Arrays y diccionarios
```swift
var listaCompra = ["huevos", "agua", "pan"]
listaCompra.append("whisky")
listaCompra[1] = "botella de agua"
listaCompra.insert("melón", at:0)

var trabajos = [
    "Malcolm": "Capitán",
    "Kaylee": "Mecánico",
]
trabajos["Jayne"] = "Relaciones públicas"
trabajos["Malcolm"] = nil
print(trabajos)
```



---

## Más sobre arrays y diccionarios
```swift
//Inicialización vacía
var listaCompra = [String]()
var trabajos = [String:String]()

//vaciar un array ya existente
listaCompra.append("patatas")
listaCompra = []
//sigue siendo de tipo [String]
listaCompra.append("pan")
```



---

## Control de flujo
- Se usa `if` y `switch` para hacer condicionales y `for-in`, `for`, `while` y `repeat-while` para hacer bucles.
- Los paréntesis alrededor de las condiciones o de la variable del bucle son opcionales.
- Se requieren llaves alrededor del cuerpo, aun con una única sentencia
```swift
let puntuacionesIndividuales = [75, 43, 103, 87, 12]
var puntuacionEquipo = 0
for puntuacion in puntuacionesIndividuales {
    if puntuacion > 50 {
        puntuacionEquipo += 3
    }
     else {
        puntuacionEquipo += 1
    }
}
print(puntuacionEquipo)
```



---

## `switch`
Permite cualquier tipo de datos y una amplia variedad de operaciones de comparación; no está limitada a enteros y pruebas de igualdad
```swift
let verdura = "pimiento rojo"
switch verdura {
case "zanahoria":
    print("Buena para la vista.")
case "lechuga", "tomates":
    print("Podrías hacer una buena ensalada.")
case let x where x.hasPrefix("pimiento"):
    print("¿Es un \(x) picante?")
default:
    print("Siempre puedes hacer una buena sopa.")
}
```



---

## Iterar por un diccionario con for-in
```swift
let numerosInteresantes = [
    "Primos": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Cuadrados": [1, 4, 9, 16, 25],
]
var mayor = 0
for (clase, numeros) in numerosInteresantes {
    for numero in numeros {
        if numero > mayor {
            mayor = numero
        }
    }
}
print(mayor)
```



---

## `while` y `repeat..while`
```swift
var n = 2
while n < 2 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 2
print(m)
```



---

## Rangos
Dos tipos: cerrados y semi-abiertos
```swift
var primerBucleFor = 0
for i in 0..<4 {   //half-open range
    primerBucleFor += i
}
print(primerBucleFor)

var segundoBucleFor = 0
for i in 0...4 {   //closed range
    segundoBucleFor += i
}
print(segundoBucleFor)
```



---

## Funciones
- Definidas con `func`
- El tipo de retorno se precede de `->`
- Al llamar a la función se pone también el nombre de los parámetros
```swift
func saluda(nombre: String, dia: String) -> String {
    return "Hola \(nombre), hoy es \(dia)"
}
saluda(nombre:"Bob", dia: "martes")
```

- Podemos definir nombres externos distintos de los internos
- Podemos poner parámetros sin nombre, con `_`
```swift
func une(_ s1: String, con s2: String) -> String {
    return s1 + s2
}
une("Hola", con: ", mundo")

```



---

## Valores opcionales
- En Swift todos los tipos deben tener valor.
- Un opcional o bien contiene un valor o contiene `nil` para indicar que el valor falta.
- Escribimos `?` después del tipo de un valor para marcarlo como opcional.
```swift
var saludo = "Hola"
saludo = nil
// error: una variable de tipo no puede tener el valor nil
var cadenaOpcional: String?
```



---

- El concepto de _optional_ no existe en otros lenguajes. Lo más cercano en, por ejemplo Objective-C, es la posibilidad de devolver `nil` desde un método que en otras ocasiones debería devolver un objeto. Sin embargo, esto sólo funciona para objetos, no funciona ni para estructuras, ni para tipos básicos de C, ni para enumeraciones. Para estos hay que usar un valor especial que signifique "error". Por ejemplo en ObjC se usan constantes como `NSNotFound`
- El problema de este enfoque es que se asume que el llamador del método sabe que hay que chequear este valor especial, pero no hay nada en el tipo que lo indique y que pueda ser utilizado por el compilador para detectar posibles errores.
- Los opcionales de Swift permiten expresar la ausencia de valor en _cualquier tipo_, sin la necesidad de constantes especiales.
> `saludo: String?` representa que la variable `saludo` puede tener un valor de tipo `String` o que puede no tener valor. No que sea un `String` que puede tener el valor `nil`. En Swift los valores de los tipos nunca pueden ser `nil`



---

## Trabajar con valores opcionales
- Los opcionales proporcionan una forma de devolver valores en métodos que deben tratar entradas con posibles errores

```swift
let numeroConvertido = Int("123")
//numeroConvertido no es Int, sino Int?
numeroConvertido.dynamicType
```
- Se usa `if` y `let` juntos para trabajar con valores opcionales.
```swift
var nombreOpcional: String? = "John Appleseed"
//Forma de que nos deje declarar sin inicializar->opcional
let saludo:String?
if let nombre = nombreOpcional {
    saludo = "Hola, \(nombre)"
}
else {
    saludo = "Hola, desconocido"
}
```



---

## Desenvolver un _optional_
- En un opcional el valor está _envuelto_ (_wrapped_). No lo podemos usar directamente.
```swift
let numeroConvertido = Int("123")
numeroConvertido + 100
```
- El valor se puede _desenvolver_ usando la exclamación (`!`):
```swift
numeroConvertido! + 100
```
- Si desenvolvemos `nil` se obtiene un error en tiempo de ejecución:
```swift
let numeroConvertidoConError = Int("123a")
//numeroConvertidoConError! + 100
```



---

## *Implicitly unwrapped optionals*
- Es un opcional que puede usarse como un no opcional, sin necesidad de desenvolverlo cada vez que se accede.
```swift
var num: Int!
num = Int("100")
let num2 = num + 200
```
- Útil por ejemplo cuando declaramos una variable que todavía no podemos inicializar, pero estamos seguros que cuando la usemos ya estará  inicializada


---

## Encadenar opcionales
- Podemos encadenar opcionales con "?" sin miedo a algo como un "null pointer exception", aunque sean `nil`
```swift
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
```



---

## Tuplas
Agrupan varios valores en uno único, compuesto
```swift
let error404 = (404, "Not found")
//se puede acceder por "posición"
print(error404.0)
//o por nombre
let error500 = (status:500, mensaje:"Internal Server Error")
print(error500.status)
//o "descomponer" en dos variables
let (status, mensaje) = error500
print(status)
```



---

## Enumerados
```swift
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
```



---

## Continuará...
![Nooooooo!!](oh_no.jpg "noooo")




---

