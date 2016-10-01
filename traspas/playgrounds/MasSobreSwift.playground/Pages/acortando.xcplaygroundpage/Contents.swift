//:[⬅️](@previous) [➡️](@next)
//:## Acortando la sintaxis
//:- **Inferencia de tipos** (si la clausura es para pasar como parámetro de un API). También podemos omitir los paréntesis y la flecha
let nombres = ["Pepe", "Eva", "Luis"]
print(nombres.sorted(isOrderedBefore: {a,b in return a<b}))

//:- **`return` implícito** si la clausura solo contiene una expresión se asume que devuelve su resultado
print(nombres.sorted(isOrderedBefore: {a,b in  a<b}))
