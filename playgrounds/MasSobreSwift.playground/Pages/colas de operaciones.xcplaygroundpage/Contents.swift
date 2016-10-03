//:[⬅️](@previous) [➡️](@next)
//: ## Colas de operaciones
//: Abstracción para *multithreading* sin tener que asignar explícitamente los *threads*
import Foundation
import XCPlayground

//solo para que el ejemplo funcione en playground
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

let cola = OperationQueue();
cola.addOperation() {
    print("comienza operación 1...");
    sleep(3)
    print("...hecho 1");
}
cola.addOperation() {
    print("comienza operacion 2...")
    sleep(3)
    print("...hecho 2");
};

//:
