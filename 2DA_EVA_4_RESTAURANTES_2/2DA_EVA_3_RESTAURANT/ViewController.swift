//
//  ViewController.swift
//  2DA_EVA_3_RESTAURANT
//
//  Created by MARIO ALBERTO on 08/03/17.
//  Copyright © 2017 Mario Alberto Guillen Rivas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let misDatos = ["Barrafina", "Bourke Street Bakery", "Cafe Dead End", "Cafe Loisl", "Cafe Lore", "Confessional", "Don Ostia", "Five Leaves", "Forkee Restaurant", "Graham Avenue Meats", "Haighs Chocolate", "Homei", "Palomino Espresso", "Petite Oyster", "Posatelier", "Royal Oak", "Tea Kha", "Thai Cafe", "Traif", "Up Sate", "Waffle Wolf"]
    
    let misImg = ["barrafina", "bourkestreetbakery","cafedeadend", "cafeloisl", "cafelore", "confessional", "donostia", "fiveleaves", "forkeerestaurant", "grahamavenuemeats", "haighschocolate", "homei", "palominoespresso", "petiteoyster", "posatelier", "royaloak", "teakha", "thaicafe", "traif", "upstate", "wafflewolf"]
    
    //Delegate y Data Source no son interfaces, protocolos que exige
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Restaurant", message: misDatos[indexPath.row], preferredStyle: .Alert)
        let boton = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("idMiCelda") as! TableViewCellMia //Regresa un UITableViewCell
        //FALTA ASIGNAR LOS DATOS DEL ARREGLOA LA CELDA QUE SE VA A REUTILIZAR
        celda.lblNombre.text = misDatos[indexPath.row]
        //IndexPath es para saber en que fila esta el usuario o seleccionó
        let imgFija = UIImage(named: misImg[indexPath.row])
        celda.lblUbica.text = "Chihuahua"
        celda.lblDesc.text = "Descripción Original aparece"
        celda.imgImagen.image = imgFija
        
        return celda
    }
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRest)
        return [compartirAct]
        
     }
    func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath) ->Void{
        let miTexto = "Vine a comer en " + misDatos[indexPath.row]
        let miImagen = UIImage(named: misImg[indexPath.row])
        let actController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil)
        presentViewController(actController, animated: true, completion: nil)
    }

}

