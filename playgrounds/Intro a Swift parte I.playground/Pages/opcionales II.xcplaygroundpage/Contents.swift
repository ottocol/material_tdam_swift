//: - El concepto de _optional_ no existe en otros lenguajes. Lo más cercano en, por ejemplo Objective-C, es la posibilidad de devolver `nil` desde un método que en otras ocasiones debería devolver un objeto. Sin embargo, esto sólo funciona para objetos, no funciona ni para estructuras, ni para tipos básicos de C, ni para enumeraciones. Para estos hay que usar un valor especial que signifique "error". Por ejemplo en ObjC se usan constantes como `NSNotFound`
//:[⬅️](@previous) [➡️](@next)
//: - El problema de este enfoque es que se asume que el llamador del método sabe que hay que chequear este valor especial, pero no hay nada en el tipo que lo indique y que pueda ser utilizado por el compilador para detectar posibles errores.
//: - Los opcionales de Swift permiten expresar la ausencia de valor en _cualquier tipo_, sin la necesidad de constantes especiales.
//: > `saludo: String?` representa que la variable `saludo` puede tener un valor de tipo `String` o que puede no tener valor. No que sea un `String` que puede tener el valor `nil`. En Swift los valores de los tipos nunca pueden ser `nil`
//:
