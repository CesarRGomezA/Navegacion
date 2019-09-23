//
//  Materia.swift
//  Navegacion
//
//  Created by Alumno on 9/23/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Materia {
    var nombre : String?
    var CalificacionPrimerParcial : Int?
    var CalificacionSegundoParcial : Int?
    var CalificacionTercerParcial : Int?
    var CalificacionFinal : Int?
    
    
    init (nombre: String, CalificacionPrimerParcial : Int, CalificacionSegundoParcial : Int, CalificacionTercerParcial : Int, CalificacionFinal : Int ) {
        self.nombre = nombre
        self.CalificacionPrimerParcial = CalificacionPrimerParcial
        self.CalificacionSegundoParcial = CalificacionSegundoParcial
        self.CalificacionTercerParcial = CalificacionTercerParcial
        self.CalificacionFinal = CalificacionFinal
        
    }
}

