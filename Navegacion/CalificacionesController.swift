//
//  CalificacionesController.swift
//  Navegacion
//
//  Created by Alumno on 9/23/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class  CalificacionesController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tvCalificaciones: UITableView!
    var materias : [Materia] = []
    override func viewDidLoad() {
        materias.append(Materia(nombre: "Matematicas", CalificacionPrimerParcial: 8, CalificacionSegundoParcial: 8, CalificacionTercerParcial: 8, CalificacionFinal: 8))
        materias.append(Materia(nombre: "Diosito", CalificacionPrimerParcial: 8, CalificacionSegundoParcial: 8, CalificacionTercerParcial: 8, CalificacionFinal: 8))
        materias.append(Materia(nombre: "Jojos", CalificacionPrimerParcial: 10, CalificacionSegundoParcial: 10, CalificacionTercerParcial: 10, CalificacionFinal: 10))
    }
    
    //numero de seccion
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
//Numero de filas por secciones
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    
    
    //Contenido de la celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMaterias")
        celda?.textLabel?.text = materias[indexPath.row].nombre
        return celda!

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetallesMateria"{
            let destino = segue.destination as? DetallesMateriController
            destino?.materia = materias[tvCalificaciones.indexPathForSelectedRow!.row]
        }
    }
    
}


