#Tecnologías para el desarrollo de aplicaciones en dispositivos móviles
##Más sobre Swift

---

##Puntos a tratar

- Protocolos
- Clausuras y concurrencia
- Extensiones

---

# Clausuras y concurrencia

---

Una clausura es un bloque de **código** que puede ser tratado como un **objeto**. Es algo así como una *función anónima* con una sintaxis simplificada

```swift
var primeroMenor= {(a:Int, b:Int) -> Bool in return a<b  }
primeroMenor(1,2)  //true!!
```

---

##Sin clausuras

Ejemplo: el método `sorted` ordena un array, pero debemos pasarle una función que, dados dos datos, devuelva `true` si están ya "en el orden correcto" (si el primer parámetro se considera menor que el segundo)


```swift
func ascendente(a:String, b:String)->Bool {
  return a<b;
}

let nombres = ["James","Billy","D'Arcy","Jimmy"]
let ord = nombres.sorted(isOrderedBefore:ascendente)    
//["Billy", "D'Arcy", "James", "Jimmy"]
```

---

##Con clausuras

- Definimos el código **donde lo necesitamos**, no aparte
- El código es más **compacto**

```swift
let nombres = ["James", "Billy", "D'Arcy", "Jimmy" ]
let ord = nombres.sorted(isOrderedBefore: {(a:String,b:String)->Bool in return a<b})
```


---

##Acortando la sintaxis

- **Inferencia de tipos** (si la clausura es para pasar como parámetro de un API). También podemos omitir los paréntesis y la flecha

```swift
let ord = nombres.sorted(isOrderedBefore: {a,b in return a<b})
```

- **`return` implícito** si la clausura solo contiene una expresión se asume que devuelve su resultado

```swift
let ord = nombres.sorted(isOrderedBefore: {a,b in  a<b})
```

---

