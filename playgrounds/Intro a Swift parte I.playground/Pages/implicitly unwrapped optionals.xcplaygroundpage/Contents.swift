//:[⬅️](@previous) [➡️](@next)
//: ## *Implicitly unwrapped optionals*
//: - Es un opcional que puede usarse como un no opcional, sin necesidad de desenvolverlo cada vez que se accede.
var num: Int!
num = Int("100")
let num2 = num + 200
//: - Por ejemplo, cuando declaramos una variable que todavía no podemos inicializar pero estamos seguros que cuando la necesitemos usar alguien ya la habrá inicializado
