//: [Previous](@previous)
import Foundation
class Cartera {
var dinero: Double
var abonado: Double{
        get{
            print("Intereses \(dinero)")
            return dinero * 0.16
        }
        set{
            print("Se ha abonado: \(newValue)")
            dinero = (dinero * 0.16) + newValue
            print("usted tiene \(dinero)")
        }
    }
    init(dinero: Double, abonado: Double) {
        print("Creando una cartera con \(dinero)")
        self.dinero = dinero
        self.abonado = abonado
    }
    
    deinit {
        print("Destruyendo una cartera con \(dinero)")
    }
}
//al ser un apuntador no cambia de referencia a la dirrecion a la que apunta por lo que es un let no un var
let caterita1 = Cartera(dinero: 23, abonado: 200)
print(caterita1.abonado)
caterita1.abonado = 10
print(caterita1)
//: Polimorfismo

