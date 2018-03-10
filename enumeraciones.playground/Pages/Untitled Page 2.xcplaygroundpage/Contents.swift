//: [Previous](@previous)

import Foundation
//: Uso de enums para Validar estados de algo
enum EstadoDocumento: Int{
    case Recibido = 0, Validado, EnProceso, Publicado
    //validado vale 1, EnProceso vale 2
}

var documento = EstadoDocumento.Validado.rawValue //entero

let estado = EstadoDocumento(rawValue: 0) //les paso su id

//:Resultado Web Sevice

enum ResultadoWebService{
    case Exito(String) //Su rawvalue es string
    case Error(Int) //su rawvalue es un entero
}
func llamadaWS() -> ResultadoWebService{
    if false{
        return ResultadoWebService.Exito("Mi contenido")
    }else{
        return ResultadoWebService.Error(704)
    }
}

let resultado: ResultadoWebService = llamadaWS()
switch resultado{
case let .Exito(contenido): //Capturando los datos comparas y extraes lo que viene adentro
    print(contenido)
case let .Error(codigo):
    print("El codigo de error es \(codigo)")
}
