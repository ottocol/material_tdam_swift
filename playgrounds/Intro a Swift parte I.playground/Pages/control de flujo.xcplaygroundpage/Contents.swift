//: ## Control de flujo
//: - Se usa `if` y `switch` para hacer condicionales y `for-in`, `for`, `while` y `repeat-while` para hacer bucles.
//: - Los paréntesis alrededor de las condiciones o de la variable del bucle son opcionales.
//: - Se requieren llaves alrededor del cuerpo, aun con una única sentencia
let puntuacionesIndividuales = [75, 43, 103, 87, 12]
var puntuacionEquipo = 0
for puntuacion in puntuacionesIndividuales {
    if puntuacion > 50 {
        puntuacionEquipo += 3
    }
     else {
        puntuacionEquipo += 1
    }
}
print(puntuacionEquipo)
//:
