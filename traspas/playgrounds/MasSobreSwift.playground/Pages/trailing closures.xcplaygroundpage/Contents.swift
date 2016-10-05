//:[⬅️](@previous) [➡️](@next)
//: Si una clausura es el último parámetro de un método, se puede omitir su nombre y poner fuera de los paréntesis
let nombres = ["Pepe", "Eva", "Luis"]
let ord = nombres.sorted() {
    a,b in
    return a<b
}
print(ord)
//:

