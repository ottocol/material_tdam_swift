//: ## Rangos
//: Dos tipos: cerrados y semi-abiertos
var primerBucleFor = 0
for i in 0..<4 {   //half-open range
    primerBucleFor += i
}
print(primerBucleFor)

var segundoBucleFor = 0
for i in 0...4 {   //closed range
    segundoBucleFor += i
}
print(segundoBucleFor)
//: