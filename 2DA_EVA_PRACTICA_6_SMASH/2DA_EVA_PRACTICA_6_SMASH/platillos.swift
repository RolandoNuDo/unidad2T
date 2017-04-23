//
//  platillos.swift
//  2DA_EVA_PRACTICA_6_SMASH
//
//  Created by Mario Alberto Guillén Rivas on 21/04/17.
//  Copyright © 2017 Mario Alberto Guillen Rivas. All rights reserved.
//

import UIKit

class platillos: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var imgIng: UIImageView!
    @IBOutlet weak var imgIng1: UIImageView!
    @IBOutlet weak var nomRest: UILabel!
    var nomR = ""
    var imgName = ""
    var indredientes = ["Salami", "Jamon", "Pavo", "Costillitas", "Lechuga", "Pollo", "Pollo Agridulce", "Alitas", "Arroz", "Filete de res", "Aguacate"]
    var indredientes2 = ["Salami", "Jamon", "Pavo", "Costillitas", "Lechuga", "Pollo", "Pollo Agridulce", "Alitas","Arroz", "Filete de res", "Aguacate"]
    var def  = [0,0]
    var num1 = 0
    var num2 = 0
    var defa = [0]
    
    var ingredientesImg = ["salami", "jamon", "pavo", "costillitas", "lechuga", "pollo", "agridulce", "alitas", "arroz", "filete", "aguacate"]
    override func viewDidLoad() {
        super.viewDidLoad()
        nomRest.text = nomR
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0){
            return indredientes[row]
        } else {
            return indredientes2[row]
        }

    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0){
            return indredientes.count
        } else {
            return indredientes2.count
        }
    }

    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        def[component] = row
        num1 = def[0]
        num2 = def[1]
        let miImagen2 = UIImage(named: ingredientesImg[num1])
        let miImagen3 = UIImage(named: ingredientesImg[num2])
        imgIng.image = miImagen2
        imgIng1.image = miImagen3
        let cuadro = UIAlertController(title: "Bienvenido a "+nomR+" sus ingredientes seleccionados son:", message: indredientes[num1]+" y "+indredientes2[num2], preferredStyle: .Alert)
        let boton = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        cuadro.addAction(boton)
        let boton2 = UIAlertAction(title: "Compartir", style: .Default, handler: comparte)
        cuadro.addAction(boton2)

        presentViewController(cuadro, animated: true, completion: nil)
        //
        
        

    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }

    func comparte(alert: UIAlertAction) ->Void{
        let miTexto = "Vine a comer un Simpsonel que tiene " + indredientes[num1] + " y " + indredientes2[num2]
        let miImagen = UIImage(named: imgName)
        let actController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil)
        print(imgName)
        presentViewController(actController, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
