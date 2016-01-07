//
//  ViewControllerTipoMasa.swift
//  ejPizzaCoursera
//
//  Created by Yolanda Martínez on 1/5/16.
//  Copyright © 2016 Yolanda Martínez. All rights reserved.
//

import UIKit

class ViewControllerTipoMasa: UIViewController {

    
    var tamano : String = "-"
    var tipoMasa : String = "delgada"
    
    @IBOutlet weak var segmentedTipoMasa: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func eligioTipoMasa(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex
        {
        case 0 : tipoMasa = "delgada"
        case 1 : tipoMasa = "crujiente"
        case 2: tipoMasa = "gruesa"
        default : tipoMasa = "-"
        }
    }

    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigView = segue.destinationViewController as! ViewControllerTipoQueso
        sigView.tamano = self.tamano
        sigView.tipoMasa = self.tipoMasa
        
    }
    

}
