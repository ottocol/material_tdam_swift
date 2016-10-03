//:[⬅️](@previous) [➡️](@next)
//: ## Arrays y diccionarios
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
//:
