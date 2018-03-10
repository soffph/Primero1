//: Playground - noun: a place where people can play

import UIKit
//Definicion de un nuevo tipo de dato
//Agrupar un conjunto de valores ya predefinodos que van a ser validos para este tipo de datos
//Esta variable solo puede guardar estos valores de Lunes a Viernes
enum Dia{
    case Lunes
    case Martes
    case Miércoles
    case Jueves
    case Viernes
    case Sabado
    case Domingo
}
var diaSemana: Dia = .Jueves
//switch deben ser exhaustivos

switch diaSemana {
case .Lunes:
    print("LUNES nadie me dice que poner en mi case")
case .Martes:
    print("MARTES nadie me dice que poner en mi case2")
case .Miércoles:
    print("MIERCOLES nadie me dice que poner en mi case1")
case .Jueves:
    print("JUEVES nadie me dice que poner mi case 4")
case .Viernes:
    print("VIERNES ")
case .Sabado, .Domingo:
    print("debe ser fin de semana")
}
