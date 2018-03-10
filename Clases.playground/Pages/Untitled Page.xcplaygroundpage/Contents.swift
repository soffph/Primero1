//: Playground - noun: a place where people can play

import UIKit
class Alumno{
    var numCuenta: String = ""
    var nombre: String{
        willSet{
            print("El nuevo valor: \(newValue)")
        }
        didSet{
            print("Valor actual : \(oldValue)")
        }
    }
    init(numCuenta: String, nombre: String) {
        self.numCuenta = numCuenta
        self.nombre = nombre
    }
    deinit {
        print("destruyento")
    }
    func sobrecargagle () -> String{
        return "No se que hago"
    }
}
class Ingenieria: Alumno{
    
}
class Contaduria: Alumno{
    override func sobrecargagle() -> String {
        print("Contador")
        return "alumno desde contador"
    }
    
}
struct Profesor{
    var numEmpleo: String //por lo de valor y referencia
    //te regala tu inicializador sintético
}
var marduk = Profesor(numEmpleo: "000000")
var parrita = Alumno(numCuenta: "999999" , nombre: "tu")
var german = parrita //apunta a la instancia de la clase german
german.numCuenta = "111111111"
parrita.numCuenta
