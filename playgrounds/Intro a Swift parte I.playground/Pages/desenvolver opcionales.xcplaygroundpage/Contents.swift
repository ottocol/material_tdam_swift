//:[⬅️](@previous) [➡️](@next)
//: ## Desenvolver un _optional_
//: - En un opcional el valor está _envuelto_ (_wrapped_). No lo podemos usar directamente.
let numeroConvertido = Int("123")
numeroConvertido! + 100
//: - El valor se puede _desenvolver_ usando la exclamación (`!`):
numeroConvertido! + 100
//: - Si desenvolvemos `nil` se obtiene un error en tiempo de ejecución:
let numeroConvertidoConError = Int("123a")
//numeroConvertidoConError! + 100
//:
