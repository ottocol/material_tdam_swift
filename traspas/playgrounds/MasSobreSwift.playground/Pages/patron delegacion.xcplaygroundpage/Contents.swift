//:[⬅️](@previous) [➡️](@next)
//: ## El patrón **delegación**
//:- **Delegación** es un patrón de diseño que permite a una clase o estructura pasar (o delegar) alguna de sus responsabilidades a una instancia de otro tipo.
//:- Una forma de implementarlo es definiendo un protocolo que encapsula las responsabilidades delegadas y definiendo en la clase un método que actualiza el delegado con una instancia proporcionada por el programador que usa la clase.
//:- Permite extender funcionalidades de un _framework_ con código proporcionado por nosotros, los programadores que usamos el _framework_.
//:- Cocoa define propiedades y protocolos delegados en muchas clases. Por ejemplo, [`UIScrollViewDelegate`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIScrollViewDelegate_Protocol/) es el protocolo que debe cumplir el objeto delegado del [`UIScrollView`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIScrollView_Class/index.html#//apple_ref/occ/instp/UIScrollView/delegate) y que nos permite definir ciertos comportamientos cuando el usuario realiza un scroll.
//: 
