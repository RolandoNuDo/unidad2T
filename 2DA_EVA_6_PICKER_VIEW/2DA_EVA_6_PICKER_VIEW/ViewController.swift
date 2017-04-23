//
//  ViewController.swift
//  2DA_EVA_6_PICKER_VIEW
//
//  Created by MARIO ALBERTO on 16/03/17.
//  Copyright © 2017 Mario Alberto Guillen Rivas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let asDatos=["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "sabado", "Domingo"]
    let arregloX=["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0){
            return asDatos[row] //FILA QUE SE DEBE REFRESCAR (Mostrar el dato según la fila actual)
        } else {
            return arregloX[row]
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2 //Regresar la cantidad de arreglos
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var sMensaje: String
        if(component == 0) {
            sMensaje = asDatos[row]
        } else {
            sMensaje = arregloX[row]
        }
        let acMostrar = UIAlertController(title: "Picker View", message: sMensaje, preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        acMostrar.addAction(boton)
        presentViewController(acMostrar, animated: true, completion: nil)
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0) {
            return asDatos.count //Regresar el numero de datos en el arreglo
        } else {
            return arregloX.count
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        <#code#>
    }
    
}

