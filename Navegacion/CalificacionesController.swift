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
    var materias : [Materia] = []
    override func viewDidLoad() {
        
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
    
    
    
}


