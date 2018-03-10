//: [Previous](@previous)

import Foundation
class Empleado{
    var descuentos: Double = 0.0
    var sueldo: Double {
        willSet{
            if sueldo < 0 {
                print("eres pobre noooo!!!")
            }
        }
    }
    init?(sueldo: Double, descuentos: Double) {
        if sueldo < descuentos{
            self.descuentos = descuentos
            self.sueldo = sueldo
        }else {
            return nil
        }
    }
}

