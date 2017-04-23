//
//  ViewController.swift
//  2DA_EVA_7_PICKER_VIEW_IMG
//
//  Created by MARIO ALBERTO on 16/03/17.
//  Copyright © 2017 Mario Alberto Guillen Rivas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var arregloIMG: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()
        arregloIMG = [UIImage(named: "facebook")!,
        UIImage(named: "google")!,
        UIImage(named: "instagram")!,
        UIImage(named: "facebook")!,
        UIImage(named: "pinterest")!,
        UIImage(named: "twit")!]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imagen = arregloIMG[row]
        let imgView = UIImageView(image : imagen)
        return imgView
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arregloIMG.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
    }

    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    
}