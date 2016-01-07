//
//  ViewControllerResumen.swift
//  ejPizzaCoursera
//
//  Created by Yolanda Martínez on 1/5/16.
//  Copyright © 2016 Yolanda Martínez. All rights reserved.
//

import UIKit

class ViewControllerResumen: UIViewController {
    
    var tamano : String = "-"
    var tipoMasa : String = "-"
    var tipoQueso : String = "-"
    var ingredientes : String  = "-"
    
    @IBOutlet weak var lbTamano: UILabel!
    
    @IBOutlet weak var lbTipoMasa: UILabel!
    
    @IBOutlet weak var lbTipoQueso: UILabel!
    
    @IBOutlet weak var lbIngredientes: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbTamano.text = String (self.tamano)
        lbTipoMasa.text = String (self.tipoMasa)
        lbTipoQueso.text = tipoQueso
        lbIngredientes.text = ingredientes
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func oprimioDeAcuerdo(sender: AnyObject) {
        let alerta = UIAlertController(title: "Pedido", message: "Tu pizza será ordenada", preferredStyle: UIAlertControllerStyle.Alert)
        alerta.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))
        
        presentViewController(alerta, animated: true, completion: nil)
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
