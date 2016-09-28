//:[⬅️](@previous) [➡️](@next)
//:## Con clausuras
//: Definimos el código *donde lo necesitamos*, no aparte
let nombres = ["James", "Billy", "D'Arcy", "Jimmy" ]
let ord = nombres.sorted(isOrderedBefore: {(a:String,b:String)->Bool in return a<b})
ord
//:
