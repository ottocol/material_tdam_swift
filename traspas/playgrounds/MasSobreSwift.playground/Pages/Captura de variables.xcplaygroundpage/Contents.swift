//:## Capturar las variables
//:[⬅️](@previous) [➡️](@next)
//:Las clausuras  **capturan las variables referenciadas**. Pueden usarlas *aunque estas variables hayan desaparecido del ámbito* cuando se ejecuta la clausura
import UIKit

let vc = UIViewController()
let centro = vc.view.center;
vc.view.add
//Nótese que la animación se ejecuta con un retardo de 10 segundos
//Mucho antes la cte "centro" se debería haber salido del ámbito
UIView.animate(WithDuratihon:2.0,
               animations:{
                 vc.view.myLabel.center = centro;
               },
               completion:nil);
