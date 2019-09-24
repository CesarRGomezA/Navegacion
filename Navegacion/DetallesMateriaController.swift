//
//  DetallesMateriaController.swift
//  Navegacion
//
//  Created by Alumno on 9/24/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit



class DetallesMateriController : UIViewController
{
    
    var materia : Materia?
    
    @IBOutlet weak var lblCalificacionPrimerParcial: UILabel!
    @IBOutlet weak var lblCalificacionSegundoParcial: UILabel!
    @IBOutlet weak var lblCalificacionTercerParcial: UILabel!
    @IBOutlet weak var lblCalificacionFinal: UILabel!
    override func viewDidLoad() {
        self.title = materia!.nombre!
        
        lblCalificacionPrimerParcial.text = "\(materia!.CalificacionPrimerParcial!)"
        lblCalificacionSegundoParcial.text = "\(materia!.CalificacionSegundoParcial!)"
        lblCalificacionTercerParcial.text = "\(materia!.CalificacionTercerParcial!)"
        lblCalificacionFinal.text = "\(materia!.CalificacionFinal!)"
        
        
        
    }
    
    
}
