//
//  ViewController.swift
//  2DA_EVA_PRACTICA_6_SMASH
//
//  Created by MARIO ALBERTO on 03/04/17.
//  Copyright © 2017 Mario Alberto Guillen Rivas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lblBotNombre: UILabel!
    @IBOutlet weak var lblBotDesc: UILabel!
    @IBOutlet weak var lblBotDir: UILabel!

    let arRestaurantes = ["Barrafina", "Bourke Street Bakery", "Cafe Dead End", "Cafe Loisl", "Cafe Lore", "Confessional", "Don Ostia", "Five Leaves", "Forkee Restaurant", "Graham Avenue Meats", "Haighs Chocolate", "Homei", "Palomino Espresso", "Petite Oyster", "Posatelier", "Royal Oak", "Tea Kha", "Thai Cafe", "Traif", "Up Sate", "Waffle Wolf"]
    
    let arImg = ["barrafina", "bourkestreetbakery","cafedeadend", "cafeloisl", "cafelore", "confessional", "donostia", "fiveleaves", "forkeerestaurant", "grahamavenuemeats", "haighschocolate", "homei", "palominoespresso", "petiteoyster", "posatelier", "royaloak", "teakha", "thaicafe", "traif", "upstate", "wafflewolf"]
    
    let arUbic = ["Ubicación de Barrafina", "Ubicación de Bourke Street Bakery", "Ubicación de Cafe Dead End", "Ubicación de Cafe Loisl", "Ubicación de Cafe Lore", "Ubicación de Confessional", "Ubicación de Don Ostia", "Ubicación de Five Leaves", "Ubicación de Forkee Restaurant", "Ubicación de Graham Avenue Meats", "Ubicación de Haighs Chocolate", "Ubicación de Homei", "Ubicación de Palomino Espresso", "Ubicación de Petite Oyster", "Ubicación de Posatelier", "Ubicación de Royal Oak", "Ubicación de Tea Kha", "Ubicación de Thai Cafe", "Ubicación de Traif", "Ubicación de Up Sate", "Ubicación de Waffle Wolf"]
    
    let arDesc = ["Descripción deBarrafina", "Descripción deBourke Street Bakery", "Descripción deCafe Dead End", "Descripción deCafe Loisl", "Descripción deCafe Lore", "Descripción deConfessional", "Descripción deDon Ostia", "Descripción deFive Leaves", "Descripción deForkee Restaurant", "Descripción deGraham Avenue Meats", "Descripción deHaighs Chocolate", "Descripción deHomei", "Descripción dePalomino Espresso", "Descripción dePetite Oyster", "Descripción dePosatelier", "Descripción deRoyal Oak", "Descripción deTea Kha", "Descripción deThai Cafe", "Descripción deTraif", "Descripción deUp Sate", "Descripción deWaffle Wolf"]
    
    var ingredientesImg = ["aguacate","alitas","arroz","costillas","filete","jamon","lechuga","pavo","agridulce","pollo","salami"]
    
    var rowGlobal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblBotNombre.text = arRestaurantes[0]
        lblBotDir.text = arUbic[0]
        lblBotDesc.text = arDesc[0]
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arRestaurantes.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("idMiCelda") as! TableViewCellRest
        celda.lblNomRest.text = arRestaurantes[indexPath.row]
        let imgFija = UIImage(named: arImg[indexPath.row])
        celda.imgRest.image = imgFija
        celda.lblLemaRest.text = arDesc[indexPath.row]
        
        return celda
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        lblBotNombre.text = arRestaurantes[indexPath.row]
        lblBotDesc.text = arDesc[indexPath.row]
        lblBotDir.text = arUbic[indexPath.row]
        rowGlobal = indexPath.row
        performSegueWithIdentifier("plates", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "plates"{
            let miViewController = segue.destinationViewController as! platillos
            miViewController.nomR = arRestaurantes[rowGlobal]
            miViewController.imgName = arImg[rowGlobal]
        }
    }

   

}

