# MiniProyecto de iOS de Tecnologías de Desarrollo
# Juego de las siete y media

Se propone implementar el conocido juego de cartas de "las 7 y media". Podéis implementar la versión "completa" en la que el usuario juega contra la máquina, ambos sacando cartas una a una y decidiendo si plantarse o seguir, o bien una versión simplificada en la que la máquina no pide cartas sino que obtiene una puntuación generada al azar.

## Estructura de clases del modelo (1.5 puntos)

Primero se deben crear las clases, *enums* y *structs* que componen el modelo. **Debéis respetar lo máximo posible los nombres de propiedades y métodos**, *salvo en el caso de `Juego`*, ya que en esta clase los necesarios dependerán de vuestra implementación

### `Palo`

Un `enum` para representar los cuatro palos de la baraja. Haz que sea internamente un `String` (`: String`), así su propiedad `.rawValue` será una cadena y podrás mostrar en pantalla el nombre del palo

### `Carta`

Un `struct`.

- Propiedades: `valor` entero y  `palo`, de tipo `Palo`
- Métodos
    + Inicializador: se le pasa un valor y un palo. Podría fallar si el `valor` que se le pasa no es correcto. Esto es lo que se llama en Swift un [*failable initializer*](https://developer.apple.com/swift/blog/?id=17), que devuelve un opcional, ya que podría ser `nil`. Para definirlo, poner `init?` en lugar de `init` y en caso de error devolver `nil` (si no hay error no es necesario devolver nada)
    + `descripcion`: devuelve un `String` con el nombre de la carta: `el 1 de oros`, `el 10 de bastos`,...
  
### Clase `Mano`

- Propiedades: `carta`, un array de `Carta`
- Métodos:
    + El inicializador debe inicializar el array a vacío (si no habéis inicializado la propiedad)
    + `addCarta`: se le pasa una carta y la añade a la mano

### Clase `Baraja`

- Propiedades: `cartas`, un array de `Carta`
- Métodos:
    + El Inicializador debe rellenar el array de cartas con todas las cartas de la baraja
    + `repartirCarta`: obtiene la última carta de la baraja y la elimina de ella. Podéis hacer esto por ejemplo con [`popLast()`](https://developer.apple.com/reference/swift/array/1539777-poplast) 
    + `barajar`: debe cambiar al azar el orden de las cartas en el `Array`. Una forma de implementar esto es añadir a la clase `Array` un método para intercambiar al azar el orden de sus componentes y luego usarlo aquí. En Swift se pueden implementar *extensiones*, que añaden métodos y propiedades a clases ya existentes, sean nuestras, de otros o del sistema. Por ejemplo:

```swift
extension String {
    func reggaetonizar() -> String {
        return self + " ya tú sabes"
    }
}
```

Podemos usar los métodos y propiedades de la extensión como usábamos los originales:

```swift
print("mami".reggaetonizar())  //mami ya tú sabes
```
    
Podéis "barajar" los componentes de un `Array` con esta extensión (tomada de [esta pregunta](http://stackoverflow.com/questions/24026510/how-do-i-shuffle-an-array-in-swift) de StackOverflow, podéis usar cualquier otra que encontréis):

```swift
extension Array {
    mutating func shuffle() {
        if count < 2 { return }
        for i in 0..<(count - 1) {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            if (i != j) {
              swap(&self[i], &self[j])
        }
    }
}
```

La extensión la guardaréis en un fichero Swift cuyo nombre podéis elegir libremente, todavía no hay una convención estándar.

### Clase `JuegoSieteyMedia`

La estructura es libre ya que depende de vuestra implementación. No obstante, tened en cuenta que vais a necesitar métodos para:

- Sumar las cartas que hay en una mano, teniendo en cuenta que el 10,11 y 12 valen medio punto, y el resto su valor
- Que el jugador pida una carta
- Que el jugador se plante
- acabar el juego y calcular el resultado
- ...

##Pruebas unitarias (0,5 puntos)

Debéis implementar al menos las siguientes pruebas unitarias:

- Que al inicializar una `Carta`  tanto el palo como el valor se han guardado correctamente (por ejemplo que al inicializar una carta como el 3 de copas si después obtenemos la propiedad `valor` nos da 3 y la propiedad `palo` nos da `copas`).
- Que cuando se reparte una carta de la `Baraja` se ha eliminado de ella y el número de cartas de la baraja ha disminuido en 1

##Interfaz gráfico simplificado (1 punto)

> Es normal que el `ViewController` conozca al modelo (o sea, que defináis una variable de tipo `JuegoSieteyMedia` dentro del código del `ViewController`). Pero no es aconsejable que también pase al revés. En el modelo no se debería guardar ninguna referencia al *controller*, para poder reutilizarlo independientemente de la interfaz gráfica. El *controller* puede enterarse de que ha pasado algo "interesante" (por ejemplo que se acaba el juego) a través de notificaciones.

En esta versión muy simplificada de la interfaz solo aparecen en pantalla tres botones: "pedir carta", "plantarse" y "nueva partida", pero no se ven las cartas gráficamente. Eso sí, el juego debería funcionar correctamente, imprimiendo los mensajes con `print`.

> En esta versión simplificada no es necesario habilitar/deshabilitar los botones según la situación del juego (por ejemplo no hace falta deshabilitar "pedir carta" cuando la partida se ha terminado). No pasa nada si pulsar lo botones de forma inconsistente da errores, ya que luego los deshabilitaremos.

Además, para simplificar la mecánica del juego no es necesario que la máquina "saque cartas de verdad". Basta con generar una puntuación al azar e informar al usuario de la puntuación que ha sacado. Para que el juego tenga sentido así primero debería jugar el jugador humano y luego la máquina.

> **La versión anterior es solo una idea, podéis implementar cualquier variante que queráis**, o cualquier mejora, incluyendo que la máquina saque cartas una por una, apostar una cantidad,...


##Completar la interfaz (1 punto)

En la interfaz completada deberían aparecer las cartas en pantalla conforme se van repartiendo. Además los botones se deberían habilitar/deshabilitar adecuadamente (por ejemplo si la partida se ha terminado no se puede pedir carta).

###Cómo dibujar las cartas

En lugar de dibujar las cartas directamente en su posición, podemos hacerlo fuera de la pantalla (es decir, con el origen del *frame* en coordenadas negativas) y luego hacer una animación hasta su posición definitiva. La siguiente función dibuja una carta con el efecto descrito. La `posicion` es el orden de la carta, para que se vayan colocando una al lado de la otra: 1, 2...

```swift
func repartirCarta(carta: Carta, enPosicion : Int) {
    let nombreImagen = String(carta.valor)+String(carta.palo.rawValue)
    //creamos un objeto imagen
    let imagenCarta = UIImage(named: nombreImagen)
    //para que la imagen sea un componente más del UI,
    //la encapsulamos en un UIImageView
    let cartaView = UIImageView(image: imagenCarta)
    //Inicialmente la colocamos fuera de la pantalla y más grande
    //para que parezca más cercana
    //"frame" son los límites de la vista, definen pos y tamaño
    cartaView.frame = CGRect(x: -200, y: -200, width: 200, height: 300)
    //La rotamos, para que luego al repartirla, gir
    cartaView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi));
    //La añadimos a la vista principal, si no no sería visible
    self.view.addSubview(cartaView)
    //guardamos la pista en el array, para luego poder eliminarla
    self.vistasCartas.append(cartaView)
    //Animación de repartir carta
    UIView.animate(withDuration: 0.5){
        //"efecto caida": la llevamos a la posición final
        cartaView.frame = CGRect(x:50+70*(enPosicion-1), y:100, width:70, height:100);
        //0 como ángulo "destino", para que rote mientras "cae"
        cartaView.transform = CGAffineTransform(rotationAngle:0);
    }
}
```

###Cómo manipular los botones

- Podéis habilitar/deshabilitar los botones por código poniendo su propiedad `isEnabled` a `true` o false respectivamente.
- Para que un botón aparezca inicialmente deshabilitado, en el "attributes inspector" de la parte derecha de Xcode desmarcar la casilla `enabled` dentro de `state` (está a mitad de panel)
- Para que se vea gráficamente que un botón está deshabilitado podéis ponerle un color distinto según el estado. Teniendo seleccionado el botón, en el `Attributes inspector` de la parte derecha de la pantalla, seleccionar el estado que nos interese en el desplegable. Al elegir colores (*text*, *shadow*, ...) serán los fijados para ese estado. 

![](estilos_boton.png)

### Cómo mostrar mensajes al usuario

Podéis mostrar el resultado del juego ("has ganado", "te has pasado",...) con un `UIAlertController`, que hará aparecer el típico cuadro de diálogo modal. El siguiente código muestra un cuadro que pone "¡¡Has perdido!!", con el título "Fin del juego", y con un único botón de "OK" que no hace nada especial, más que quitar el cuadro de diálogo. 

```swift
let alert = UIAlertController(
    title: "Fin del juego",
    message: "¡¡Has perdido!!",
    preferredStyle: UIAlertControllerStyle.alert)
let action = UIAlertAction(
    title: "OK",
    style: UIAlertActionStyle.default)
alert.addAction(action)
self.present(alert, animated: true, completion: nil)
```


##Posibles mejoras (1 punto)

El proyecto está abierto a cualquier posible mejora o modificación que queráis hacer, por ejemplo:

- Contabilizar las partidas ganadas/perdidas
- Que se pueda apostar una cantidad y vaya contabilizando la cantidad  hasta el momento
- Que la máquina también vaya sacando cartas
- Variantes del juego o implementación de otros juegos sencillos
- ...
