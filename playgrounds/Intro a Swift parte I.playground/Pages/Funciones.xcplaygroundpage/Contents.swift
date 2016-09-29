//:## Funciones
//:- Definidas con `func`
//:- El tipo de retorno se precede de `->`
//:- Al llamar a la función se pone también el nombre de los parámetros
func saluda(nombre: String, dia: String) -> String {
    return "Hola \(nombre), hoy es \(dia)"
}
saluda(nombre:"Bob", dia: "martes")
//:- Podemos definir nombres externos distintos de los internos
//:- Podemos poner parámetros sin nombre, con `_`
func une(_ s1: String, con s2: String) -> String {
    return s1 + s2
}
une("Hola", con: ", mundo")

//:
