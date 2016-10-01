//:[⬅️](@previous) [➡️](@next)
//: ## Sin Clausuras
//: El método `sorted` ordena un array. Debemos pasarle una función que, dados dos datos, devuelva `true` si están ya "en el orden correcto" (si el primer parámetro se considera menor que el segundo)
func ascendente(a:String, b:String)->Bool {
    return a<b;
}

let nombres = ["James","Billy","D'Arcy","Jimmy"]
let ord = nombres.sorted(isOrderedBefore:ascendente)
//:
