//: `switch`
//: Permite cualquier tipo de datos y una amplia variedad de operaciones de comparación; no está limitada a enteros y pruebas de igualdad
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
//:
