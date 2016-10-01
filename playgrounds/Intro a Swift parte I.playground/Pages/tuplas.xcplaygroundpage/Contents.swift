//:[⬅️](@previous) [➡️](@next)
//: ## Tuplas
//: Agrupan varios valores en uno único, compuesto
let error404 = (404, "Not found")
//se puede acceder por "posición"
print(error404.0)
//o por nombre
let error500 = (status:500, mensaje:"Internal Server Error")
print(error500.status)
//o "descomponer" en dos variables
let (status, mensaje) = error500
print(status)
//:
