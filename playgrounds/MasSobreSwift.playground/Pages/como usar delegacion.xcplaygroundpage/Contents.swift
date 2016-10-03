//:[⬅️](@previous) [➡️](@next)
//:## Cómo usar la delegación
//: 1. Debemos crear una clase que adopte el protocolo delegado (por ejemplo `UIApplicationDelegate`). La clase puede ser de cualquier tipo y tener las propiedades y métodos añadidos que nos interesen.
//: 2. Implementamos los métodos del delegado que nos interesen. Esos métodos representan eventos particulares detectados por la clase delegadora (por ejemplo `UIApplication`) en los que va a llamar a nuestro código. En todos esos métodos aparece como parámetro la clase delegadora y otros parámetros adicionales con información del evento. Usaremos estos parámetros en nuestro código para poder acceder a la clase delegadora o a la información del evento.
//: 3. Hay que actualizar en algún momento la propiedad correspondiente de la clase delegadora (en este caso `UIApplication`). La propiedad suele llamarse `delegate`.
//: 4. Cuando en tiempo de ejecución suceda el evento detectado por la clase delegadora se llamará a nuestro código.
//:
