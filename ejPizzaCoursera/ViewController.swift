//
//  ViewController.swift
//  ejPizzaCoursera
//
//  Created by Yolanda Martínez on 1/5/16.
//  Copyright © 2016 Yolanda Martínez. All rights reserved.
//
//  El repositorio de github para este ejemplo es https://github.com/yolandamartre/tareaPizzaCoursera.git
//  El token (para accesar de manera segura el proyecto ) 69525f7c16f73fd3411a7ceb4054032019f5ffeb


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedTamano: UISegmentedControl!
    
    var tamano : String = "chica"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewSig = segue.destinationViewController as! ViewControllerTipoMasa
        viewSig.tamano = tamano
    }

    @IBAction func seleccionoTamano(sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex
        {
        case 0 : tamano = "chica"
        case 1 : tamano = "mediana"
        case 2: tamano = "grande"
        default : tamano = "-"
        }
        
    }
}

