//:## ¡Acortando más!
//:**Parámetros por defecto** por defecto los parámetros reciben como nombre `$i` donde `i` es el número (empieza en 0)
let nombres = ["Pepe", "Eva", "Luis"]
let ord = nombres.sorted(isOrderedBefore: {$0<$1})
ord

