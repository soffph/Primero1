//: Playground - noun: a place where people can play

import UIKit
//paso por valor
struct Cuerpo{
    var altura: Double = 0 //propiedades con almacenamiento y valor por default
    var peso: Double = 0
}
var cuerpo = Cuerpo()
cuerpo.altura = 1.64
cuerpo.peso = 65

var cuerpo2 = cuerpo //como es una estructura estoy copiando el valor y no pasando una direccion

cuerpo.altura = 2.0
cuerpo2 //Este no se ve afectado a 2.0 ya que cuerpo2 es una copia
//nunca puedo pasar un apuntador de una estructura
