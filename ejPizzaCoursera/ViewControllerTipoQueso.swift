//
//  ViewControllerTipoQueso.swift
//  ejPizzaCoursera
//
//  Created by Yolanda Martínez on 1/5/16.
//  Copyright © 2016 Yolanda Martínez. All rights reserved.
//

import UIKit

class ViewControllerTipoQueso: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var tamano : String = "-"
    var tipoMasa : String = "_"
    var tipoQueso : String = "Mozarella"
 
    var listaTiposQuesos = ["Mozarella", "Cheddar", "Parmesano", "Sin queso"]
    
    @IBOutlet weak var pickerTipoQueso: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigView = segue.destinationViewController as! ViewControllerIngredientes
        
        sigView.tamano = self.tamano
        sigView.tipoMasa = self.tipoMasa
        sigView.tipoQueso = self.tipoQueso
        
    }
    
    
    
    // MARK : Picker View Data Source y Delegate
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    // returns the # of rows in each component..
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return listaTiposQuesos.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return listaTiposQuesos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        self.tipoQueso = listaTiposQuesos[row]
    }

}
